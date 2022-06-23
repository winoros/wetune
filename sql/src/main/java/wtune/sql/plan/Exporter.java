package wtune.sql.plan;

import java.util.List;

public interface Exporter extends Qualified {
  boolean deduplicated();

  List<String> attrNames();

  List<Expression> attrExprs();
}
