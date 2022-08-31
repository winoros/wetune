package wtune.stmt.internal;

import wtune.common.datasource.DbSupport;
import wtune.sql.schema.Schema;
import wtune.sql.schema.SchemaSupport;
import wtune.stmt.App;
import wtune.stmt.dao.SchemaPatchDao;
import wtune.common.io.FileUtils;

import java.util.*;
import java.util.stream.Collectors;

import static java.util.function.Function.identity;
import static wtune.common.datasource.DbSupport.MySQL;
import static wtune.common.datasource.DbSupport.PostgreSQL;

public class AppImpl implements App {
  private final String name;
  private String dbType;
  private final Map<String, Schema> schemas;
  private Properties connProps;

  private AppImpl(String name, String dbType) {
    this.name = name;
    this.dbType = dbType;
    this.schemas = new HashMap<>();
  }

  public static App of(String name) {
    return KNOWN_APPS.computeIfAbsent(name, it -> new AppImpl(it, MySQL));
  }

  public static Collection<App> all() {
    return KNOWN_APPS.values();
  }

  public String name() {
    return name;
  }

  public String dbType() {
    return dbType;
  }

  public Schema schema(String tag, boolean patched) {
    final Schema existing = schemas.get(tag);
    if (existing == null) {
      final Schema schema = readSchema(tag);
      if (schema == null) return null;
      if (patched) schema.patch(SchemaPatchDao.instance().findByApp(name));
      schemas.put(tag, schema);
      return schema;
    } else return existing;
  }

  @Override
  public Properties dbProps() {
    if (connProps == null) {
      final String dbName = name + "_base";
      connProps = DbSupport.dbProps(dbType, dbName);
    }

    return connProps;
  }

  @Override
  public void setDbType(String dbType) {
    this.dbType = dbType;
  }

  @Override
  public void setSchema(String tag, Schema schema) {
    schemas.put(tag, schema);
  }

  @Override
  public void setDbConnProps(Properties props) {
    this.connProps = props;
  }

  private Schema readSchema(String tag) {
    final String str = FileUtils.readFile("schemas", name + "." + tag + ".schema.sql");
    if (str == null) return null;
    return SchemaSupport.parseSchema(dbType, str);
  }

  private static final String[] APP_NAMES = {
    "broadleaf",
    "calcite_test",
    "diaspora",
    "discourse",
    "eladmin",
    "fatfreecrm",
    "febs",
    "forest_blog",
    "gitlab",
    "guns",
    "halo",
    "homeland",
    "lobsters",
    "publiccms",
    "pybbs",
    "redmine",
    "refinerycms",
    "sagan",
    "shopizer",
    "solidus",
    "spree"
  };

  private static final Set<String> PG_APPS = Set.of("discourse", "gitlab", "homeland");

  private static final Map<String, App> KNOWN_APPS =
      Arrays.stream(APP_NAMES)
          .map(it -> new AppImpl(it, (PG_APPS.contains(it) ? PostgreSQL : MySQL)))
          .collect(Collectors.toMap(App::name, identity()));
}
