package wtune.sql.ast.constants;

public enum IndexKind {
  BTREE,
  RTREE,
  HASH,
  FULLTEXT,
  SPATIAL,
  GIST,
  SPGIST,
  GIN,
  BRIN
}
