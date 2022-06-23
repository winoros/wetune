import org.junit.jupiter.api.Test;
import wtune.common.datasource.DbSupport;
import wtune.demo.optimize.OptimizeSQLSupport;
import wtune.demo.optimize.OptimizeStat;
import wtune.sql.SqlSupport;
import wtune.sql.schema.Schema;
import wtune.sql.schema.SchemaSupport;
import wtune.stmt.App;
import wtune.superopt.substitution.SubstitutionBank;
import wtune.superopt.substitution.SubstitutionSupport;

import java.io.IOException;
import java.nio.file.Path;

public class OptimizeSQLTest {

  private static SubstitutionBank bank;

  static {
    try {
      bank = SubstitutionSupport.loadBank(dataDir().resolve("prepared/rules.txt"));
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  @Test
  void testOptimizeSQL0() {
    final String rawSql =
        "SELECT `tags`.`id` FROM `tags` INNER JOIN `taggings` ON `tags`.`id` = `taggings`.`tag_id` WHERE `taggings`.`taggable_id` = 1234 AND `taggings`.`taggable_type` = 'Contact' AND `taggings`.`context` = 'tags'";
    final String appName = "fatfreecrm";
    final Schema schema = App.of(appName).schema("base", true);

    final OptimizeStat optRes =
        OptimizeSQLSupport.optimizeSQL(rawSql, DbSupport.MySQL, schema, bank);
    assert optRes.isOptimized();
    System.out.println(optRes.optSqls());
    System.out.println(optRes.ruleSteps());
  }

  @Test
  void testOptimizeSQL1() {
    final String rawSql =
        "SELECT `sub`.`name` \n"
            + "FROM (SELECT `id`,`name` FROM `spree_zones`) AS `sub`\n"
            + "LEFT OUTER JOIN `spree_zone_members` \n"
            + "ON `sub`.`id` = `spree_zone_members`.`zone_id`";
    final String appName = "spree";
    final Schema schema = App.of(appName).schema("base", true);

    final OptimizeStat optRes =
        OptimizeSQLSupport.optimizeSQL(rawSql, DbSupport.MySQL, schema, bank);
    System.out.println(optRes.optSqls());
    System.out.println(optRes.ruleSteps());
  }

  @Test
  void testOptimizeSQL2() {
    final String rawSql =
        "SELECT COUNT(*) FROM `roles` INNER JOIN `roles_users` ON `roles`.`id` = `roles_users`.`role_id` " +
            "WHERE `roles_users`.`user_id` = 2400 AND `roles`.`id` IN (25, 26)";
    final String schemaStr =
        """
            CREATE TABLE `roles_users` (
               `id` int(11) NOT NULL,
               `role_id` int(11) DEFAULT NULL,
               `user_id` int(11) DEFAULT NULL,
               PRIMARY KEY (`id`)
             );
             CREATE TABLE `roles`(
                 `id`
                 int(11) NOT NULL,
                 PRIMARY KEY(`id`)
             );""";
    final Schema schema = Schema.parse(DbSupport.MySQL, schemaStr);

    final OptimizeStat optRes =
        OptimizeSQLSupport.optimizeSQL(rawSql, DbSupport.MySQL, schema, bank);
    System.out.println(optRes.optSqls());
  }

  @Test
  void testOptimizeSQL3() {
    final String rawSql =
        "SELECT `n`.* FROM `notes` AS `n` " +
            "WHERE `n`.`type` = '1' AND `n`.`id` IN (SELECT `m`.`id` FROM `notes` AS `m` WHERE `m`.`commit_id` = '10232')";
    final String schemaStr =
        """
            CREATE TABLE `notes` (
             `id` int NOT NULL,
             `type` int NOT NULL,
             `commit_id` int NOT NULL,
             PRIMARY KEY (`id`)
            ) ;""";
    final Schema schema = Schema.parse(DbSupport.MySQL, schemaStr);

    final OptimizeStat optRes =
        OptimizeSQLSupport.optimizeSQL(rawSql, DbSupport.MySQL, schema, bank);
    System.out.println(optRes.optSqls().get(0));
  }

  @Test
  void testOptimizeSQL4() {
    final String rawSql =
        "SELECT `m`.* FROM `notes` AS `m` union SELECT `n`.* FROM `notes` AS `n`";
    final String schemaStr =
        """
            CREATE TABLE `notes` (
             `id` int NOT NULL,
             `type` int NOT NULL,
             `commit_id` int NOT NULL,
             PRIMARY KEY (`id`)
            ) ;""";
    final Schema schema = Schema.parse(DbSupport.MySQL, schemaStr);

    final OptimizeStat optRes =
        OptimizeSQLSupport.optimizeSQL(rawSql, DbSupport.MySQL, schema, bank);
    System.out.println(optRes.optSqls().get(0));
  }

  @Test
  void testOptimizeSQLWithoutSchema0() {
    final String rawSql =
        "SELECT t1.`id` FROM `tags` as t1 LEFT JOIN `tags` as t2 ON t1.`id` = t2.`id` WHERE t1.name = 'abc'";
    final OptimizeStat optRes = OptimizeSQLSupport.optimizeSQL(rawSql, DbSupport.MySQL, null, bank);
    assert optRes.isOptimized();
    System.out.println(optRes.optSqls());
  }

  @Test
  void testOptimizeSQLWithoutSchema1() {
    final String rawSql =
        "SELECT t1.`id` FROM `tags` AS t1  WHERE t1.`tid` IN (SELECT t2.`tid` FROM `tags` AS t2)";
    final OptimizeStat optRes = OptimizeSQLSupport.optimizeSQL(rawSql, DbSupport.MySQL, null, bank);
    assert optRes.isOptimized();
    System.out.println(optRes.optSqls());
  }

  @Test
  void testSchemaAutoDetect0() {
    final String rawSql =
        "SELECT t1.`id` FROM `tags` as t1 LEFT JOIN `tags` as t2 ON t1.`id` = t2.`id` WHERE t1.name = 'abc'";
    final Schema schema =
        SchemaSupport.parseSimpleSchema(
            DbSupport.MySQL, SqlSupport.parseSql(DbSupport.MySQL, rawSql));

    assert schema != null;
    System.out.println(schema.tables());
  }

  @Test
  void testSchemaAutoDetect1() {
    final String rawSql =
        "SELECT t1.`id` FROM `tags` AS t1  WHERE t1.`tid` IN (SELECT t2.`tid` FROM `tags` AS t2)";
    final Schema schema =
        SchemaSupport.parseSimpleSchema(
            DbSupport.MySQL, SqlSupport.parseSql(DbSupport.MySQL, rawSql));

    assert schema != null;
    System.out.println(schema.tables());
  }

  private static Path dataDir() {
    return Path.of(System.getProperty("wetune.data_dir", "wtune_data"));
  }
}
