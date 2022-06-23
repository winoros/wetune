package wtune.testbed.util;

public interface StmtSyntaxRewriteHelper {
    static String regexRewriteForSQLServer(String sql){
        sql = sql.replaceAll("`([A-Za-z0-9_$]+)`", "\\[$1\\]");
        sql = sql.replaceAll("\"([A-Za-z0-9_$]+)\"", "\\[$1\\]");

//        sql = sql.replaceAll("(\\(SELECT .+ )ORDER BY .+(ASC|DESC)\\)", "$1\\)");
        sql = sql.replaceAll("(\\(SELECT (DISTINCT)*)(.+)(ORDER BY ([^ ])+( ASC| DESC)*\\))", "$1 TOP 100 PERCENT $3 $4");

        sql = sql.replaceAll("(ORDER BY [^()]+) LIMIT ([0-9]+) OFFSET ([0-9]+)", "$1 OFFSET $3 ROWS FETCH NEXT $2 ROWS ONLY");
        sql = sql.replaceAll("LIMIT ([0-9]+) OFFSET ([0-9]+)", "LIMIT $1");

        sql = sql.replaceAll("\\(SELECT DISTINCT (.+) LIMIT ([0-9]+)\\)", "\\(SELECT DISTINCT TOP $2 $1\\)");
        sql = sql.replaceAll("\\(SELECT (.+) LIMIT ([0-9]+)\\)", "\\(SELECT TOP $2 $1\\)");
        sql = sql.replaceFirst("SELECT DISTINCT (.+)LIMIT ([0-9]+)", "SELECT DISTINCT TOP $2 $1");
        sql = sql.replaceFirst("SELECT (.+)LIMIT ([0-9]+)", "SELECT TOP $2 $1");

        sql = sql.replaceAll("MATCH ([^ ]+) AGAINST \\('([^\\[]+)' IN BOOLEAN MODE\\)", "$1 LIKE '%$2%'");
        sql = sql.replaceAll("'FALSE'", "0");
        sql = sql.replaceAll("'TRUE'", "1");
        sql = sql.replaceAll("TRUE", "1");
        sql = sql.replaceAll("FALSE", "0");
        sql = sql.replaceAll("USE INDEX \\([^ ]*\\)", "");
        sql = sql.replaceAll("CROSS JOIN", "JOIN");
        sql = sql.replaceAll("(\\[[A-Za-z0-9]+\\] \\* \\[[A-Za-z0-9]+\\])", "\\($1\\) AS total");

        sql = sql.replaceAll("ORDER BY \\([^ ]+ IS NULL\\) IS NULL, [^ ]+ IS NULL,", "ORDER BY");
        sql = sql.replaceAll("ORDER BY [^ ]+ IS NULL (ASC|DESC),", "ORDER BY");
        sql = sql.replaceAll("( [^ \\(\\)]+ IS NULL( ASC| DESC|),)( [^ ]+( ASC| DESC|)(,)*)", "$3");

        return sql;
    }

    static String regexRewriteForCalcite(String sql) {
        sql = sql.replaceAll("`([A-Za-z0-9_$]+)`", "\"$1\"");

        return sql;
    }
}
