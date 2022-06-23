#! env python3

import argparse
import subprocess
import os
from datetime import datetime
from pathlib import Path

profile_sample = {
    'db': 'opt',
    'tag': 'notag',
    'schema': 'opt',
    'workload': 'base',
    'rows': '10000',
    'times': '100',
    'dist': 'uniform',
    'seq': 'typed',
    'unpatch': True
}

profile_base = {
    'db': 'base',
    'tag': 'base',
    'schema': 'base',
    'workload': 'base',
    'rows': '10000',
    'times': '100',
    'dist': 'uniform',
    'seq': 'typed',
    'unpatch': True
}

profile_indexed = {
    'db': 'opt',
    'schema': 'opt',
    'tag': 'index',
    'workload': 'index',
    'rows': '10000',
    'times': '100',
    'dist': 'uniform',
    'seq': 'typed',
    'unpatch': True
}

profile_opt = {
    'db': 'opt',
    'tag': 'opt',
    'schema': 'opt',
    'workload': 'opt',
    'rows': '10000',
    'times': '100',
    'dist': 'uniform',
    'seq': 'typed',
    'unpatch': True
}

profile_verify = {
    'db': 'verify',
    'tag': 'notag',
    'schema': 'opt',
    'workload': 'verify',
    'rows': '100',
    'times': '100',
    'dist': 'uniform',
    'seq': 'random',
    'unpatch': True
}

profile_compare = {
    'db': 'opt',
    'tag': 'notag',
    'schema': 'opt',
    'workload': 'verify',
    'rows': '10000',
    'times': '50',
    'dist': 'uniform',
    'seq': 'typed',
    'unpatch': True
}

profile_patched = {
    'db': 'base',
    'tag': 'patched',
    'schema': 'base',
    'workload': 'base',
    'rows': '10000',
    'times': '100',
    'dist': 'uniform',
    'seq': 'typed',
    'unpatch': False
}

profiles = {
    'sample': profile_sample,
    'base': profile_base,
    'index': profile_indexed,
    'opt': profile_opt,
    'verify': profile_verify,
    'compare': profile_compare,
    'patched': profile_patched
}

mysql_conn_params = {'user': 'root', 'password': 'admin', 'port': '3307'}
pgsql_conn_params = {'user': 'zxd', 'port': '5432'}
conn_params = {'mysql': mysql_conn_params, 'pgsql': pgsql_conn_params}

hosts = {'cube2': '10.0.0.102', 'cube3': '10.0.0.103', 'cube5': '10.0.0.105'}

pg_apps = {'discourse', 'gitlab', 'homeland'}


def prepare_args(args, app):
    pair = app.split(':')
    app = pair[0]
    db_type = pair[1] if len(
        pair) >= 2 else 'pgsql' if app in pg_apps else 'mysql'

    pack = profiles[args['profile']] if args.get('profile') else {}

    pack['db_type'] = db_type
    pack['conn'] = conn_params[db_type]
    pack['app'] = app
    pack['cmd'] = args['cmd']

    def set_arg(key, default):
        if key in args and args[key]: pack[key] = args[key]
        elif key not in pack and default: pack[key] = default

    set_arg('db', 'base')
    set_arg('tag', 'notag')
    set_arg('schema', 'base')
    set_arg('workload', 'base')
    set_arg('rows', '10000')
    set_arg('times', '100')
    set_arg('dist', 'uniform')
    set_arg('seq', 'typed')
    set_arg('host', '10.0.0.102')
    set_arg('verbosity', '0' if should_mutate(args) else '3')
    set_arg('continue', None)
    set_arg('targets', None)
    set_arg('lines', None)
    set_arg('dump', None)

    targets = pack.get('targets')
    if targets:
        if targets[-1] != ',':
            targets = targets + ','
        pack['targets'] = targets

    lines = pack.get('lines')
    if lines:
        if lines[-1] != ',':
            lines = lines + ','
        pack['lines'] = lines

    if pack['host'] in hosts:
        pack['host'] = hosts[pack['host']]

    pack['conn']['host'] = pack['host']
    pack['conn']['db'] = pack['app'] + '_' + pack['db']

    return pack


def echo_args(args):
    print("[Exec] app: {}, db: {}, host: {}, tag: {}".format(
        args['app'], args['db'], args['host'], args['tag']))
    print("[Exec] schema.sql: {}, schema.lua: {}, workload.lua: {}".format(
        args['schema'], args['schema'], args['workload']))
    print("[Exec] #rows: {}, times: {}, dist: {}, seq: {}".format(
        args['rows'], args['times'], args['dist'], args['seq']))


def should_mutate(args):
    return args['cmd'] == 'verify' or args['cmd'] == 'compare'


def invoke_sysbench(args):
    real_args = [
        'sysbench', '--verbosity=' + args['verbosity'], '--app=' + args['app'],
        '--tag=' + args['tag'], '--schema=' + args['schema'],
        '--workload=' + args['workload'], '--rows=' + args['rows'],
        '--times=' + args['times'], '--randDist=' + args['dist'],
        '--randSeq=' + args['seq']
    ]

    if args['verbosity'] == '0': real_args.append('--mysql-ignore-errors=all')
    if 'continue' in args: real_args.append('--continue=' + args['continue'])
    if 'targets' in args: real_args.append('--targets=' + args['targets'])
    if 'lines' in args: real_args.append('--lines=' + args['lines'])

    if 'dump' in args: real_args.append('--dump=true')

    db_type = args['db_type']
    real_args.append("--db-driver=" + db_type)

    conn_param = args['conn']
    for k, v in conn_param.items():
        real_args.append("--" + db_type + "-" + k + "=" + v)

    real_args += ["testbed/wtune.lua", args['cmd']]

    if not should_mutate(args):
        print("[Exec] " + " ".join(real_args), flush=True)

    return subprocess.run(real_args).returncode


def invoke_mysql(args, cmd, inFile=None):
    real_args = [
        'mysql', '-u', args['user'], '-p' + args['password'], '-h',
        args['host'], '-P3307'
    ]
    real_args += cmd
    print("[Exec] " + " ".join(real_args), flush=True)
    subprocess.run(real_args, stdin=inFile)


def invoke_pgsql(args, cmd):
    real_args = ['psql', '-U', args['user'], '-h', args['host']]
    real_args += cmd
    print("[Exec] " + " ".join(real_args), flush=True)
    subprocess.run(real_args)


def recreate_mysql(args):
    app = args['app']
    db = args['db']
    schema = args['schema']
    db_name = '{}_{}'.format(app, db)
    schema_sql = '{}/{}.{}.schema.sql'.format(app, app, schema)
    conn_param = args['conn']
    invoke_mysql(conn_param,
                 ['-e', "drop database if exists `{}`".format(db_name)])
    invoke_mysql(conn_param, ['-e', 'create database `{}`'.format(db_name)])
    with open(schema_sql) as inFile:
        invoke_mysql(conn_param, ['-D', db_name], inFile)


def recreate_pgsql(args):
    app = args['app']
    db = args['db']
    schema = args['schema']
    db_name = '{}_{}'.format(app, db)
    schema_sql = '{}/{}.{}.schema.sql'.format(app, app, schema)
    conn_param = args['conn']
    invoke_pgsql(conn_param,
                 ['-c', 'drop database if exists "{}"'.format(db_name)])
    invoke_pgsql(conn_param, ['-c', 'create database "{}"'.format(db_name)])
    invoke_pgsql(conn_param, ['-d', db_name, '-f', schema_sql])


def recreate(args):
    if args['db_type'] == 'mysql':
        recreate_mysql(args)
    elif args['db_type'] == 'pgsql':
        recreate_pgsql(args)
    else:
        assert False


def patch_mysql(args, doApply):
    app = args['app']
    patch_sql = '{}/{}patch.sql'.format(app, '' if doApply else 'un')
    if Path(patch_sql).is_file():
        db = args['db']
        db_name = '{}_{}'.format(app, db)
        conn_param = args['conn']
        with open(patch_sql) as inFile:
            invoke_mysql(conn_param, ['-D', db_name, '-f'], inFile)


def patch_pgsql(args, doApply):
    app = args['app']
    patch_sql = '{}/{}patch.sql'.format(app, '' if doApply else 'un')
    if Path(patch_sql).is_file():
        db = args['db']
        db_name = '{}_{}'.format(app, db)
        conn_param = args['conn']
        invoke_pgsql(conn_param, ['-d', db_name, '-f', patch_sql])


def patch(args, doApply):
    if args['db'] != 'base':
        response = input(
            'warning: apply patch to db other than base, type Y to continue: ')
        if response != 'Y':
            return

    if args['db_type'] == 'mysql':
        patch_mysql(args, doApply)
    elif args['db_type'] == 'pgsql':
        patch_pgsql(args, doApply)
    else:
        assert False


def backup(apps):
    backup_dir = datetime.now().strftime('backup_%m%d%H%M')
    os.system('rm -rf ' + backup_dir)
    for app in apps:
        os.system('mkdir -p {}/{}'.format(backup_dir, app))
        os.system('cp {}/eval.* {}/{}/'.format(app, backup_dir, app))
        os.system('cp {}/sample {}/{}/'.format(app, backup_dir, app))


parser = argparse.ArgumentParser()
parser.add_argument('-c', '--cmd', required=True)
parser.add_argument('-p', '--profile')
parser.add_argument('-d', '--db')
parser.add_argument('-t', '--tag')
parser.add_argument('-s', '--schema')
parser.add_argument('-w', '--workload')
parser.add_argument('-r', '--rows')
parser.add_argument('-R', '--times')
parser.add_argument('-D', '--dist')
parser.add_argument('-S', '--seq')
parser.add_argument('-H', '--host')
parser.add_argument('-C', '--continue')
parser.add_argument('-T', '--targets')
parser.add_argument('-o', '--dump', action='store_true')
parser.add_argument('-l', '--lines')
parser.add_argument('-v', '--verbosity')
parser.add_argument('apps', action='append')

known_apps = [
    'broadleaf', 'diaspora', 'discourse', 'eladmin', 'fatfreecrm', 'febs',
    'forest_blog', 'gitlab', 'guns', 'halo', 'homeland', 'lobsters',
    'publiccms', 'pybbs', 'redmine', 'refinerycms', 'sagan', 'shopizer',
    'solidus', 'spree'
]  # 'fanchaoo', 'springblog', 'wordpress']

if __name__ == '__main__':
    args = vars(parser.parse_args())
    if args['cmd'] == 'backup':
        backup(known_apps)
        exit()

    appSpec = args['apps'][0]
    if appSpec == 'all':
        args['apps'] = known_apps
    elif appSpec.startswith('>'):
        args['apps'] = known_apps[known_apps.index(appSpec[1:]):]

    failed = set()
    for app in args['apps']:
        app_args = prepare_args(args, app)

        if args['cmd'] == 'recreate':
            echo_args(app_args)
            recreate(app_args)
        elif args['cmd'] == 'patch':
            echo_args(app_args)
            patch(app_args, True)
        elif args['cmd'] == 'unpatch':
            echo_args(app_args)
            patch(app_args, False)
        else:
            if app_args['verbosity'] != '0':
                echo_args(app_args)
            if app_args['db'] == 'base':
                if app_args['unpatch']:
                    patch(app_args, False)
                else:
                    patch(app_args, True)
            if invoke_sysbench(app_args) != 0:
                failed.add(app)

    if len(failed) != 0:
        print('failed apps:')
        for app in failed:
            print(app)
