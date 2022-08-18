package wtune.sql.support.resolution;

import wtune.sql.ast.AdditionalInfo;
import wtune.sql.ast.SqlNode;

public interface Relations extends AdditionalInfo<Relations> {
  AdditionalInfo.Key<Relations> RELATION = RelationsImpl::new;

  Relation enclosingRelationOf(SqlNode node);
}
