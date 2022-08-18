package wtune.sql.support.resolution;

import wtune.sql.SqlSupport;

abstract class AttributeBase implements Attribute {
  private final Relation owner;
  private final String name;

  protected AttributeBase(Relation owner, String name) {
    this.owner = owner;
    this.name = SqlSupport.simpleName(name);
  }

  @Override
  public String name() {
    return name;
  }

  @Override
  public Relation owner() {
    return owner;
  }
}
