package wtune.sql.ast;

import wtune.sql.ast.constants.Category;

import java.util.Collections;
import java.util.List;

import static wtune.common.datasource.DbSupport.MySQL;
import static wtune.common.datasource.DbSupport.PostgreSQL;
import static wtune.sql.ast.constants.DataTypeName.*;

class SqlDataTypeImpl implements SqlDataType {
  private final Category category;
  private final String name;
  private final int width;
  private final int precision;
  private boolean unsigned;
  private String intervalField;
  private List<String> valuesList;
  private int[] dimensions;

  private static final int[] EMPTY_INT_ARRAY = new int[0];

  SqlDataTypeImpl(Category category, String name, int width, int precision) {
    this.category = category;
    this.name = name;
    this.width = width;
    this.precision = precision;
    this.valuesList = Collections.emptyList();
    this.dimensions = EMPTY_INT_ARRAY;
  }

  @Override
  public Category category() {
    return category;
  }

  @Override
  public String name() {
    return name;
  }

  @Override
  public int width() {
    return width;
  }

  @Override
  public int precision() {
    return precision;
  }

  @Override
  public boolean unsigned() {
    return unsigned;
  }

  @Override
  public List<String> valuesList() {
    return valuesList;
  }

  @Override
  public boolean isArray() {
    return dimensions != null && dimensions.length > 0;
  }

  @Override
  public int storageSize() {
    switch (name) {
      case TINYINT:
      case BOOLEAN:
      case ENUM:
      case SET:
      case YEAR:
        return 1;
      case SMALLINT:
      case SMALLSERIAL:
        return 2;
      case MEDIUMINT:
      case SERIAL:
      case INTEGER:
      case INT:
      case REAL:
      case FLOAT:
      case DATE:
        return 4;
      case DATETIME:
      case DOUBLE:
      case BIGSERIAL:
      case BIGINT:
      case TIMESTAMP:
      case TIMESTAMPTZ:
      case TIME:
      case MACADDR:
      case MONEY:
        return 8;
      case TIMETZ:
        return 12;
      case INTERVAL:
      case UUID:
        return 16;
      case BIT:
      case BIT_VARYING:
        return (width - 1) / 8 + 1;

      case DECIMAL:
      case NUMERIC:
      case FIXED:
        final int numIntegralDigit = width - precision;
        final int numFractionalDigit = precision;
        return 4
            * (numIntegralDigit / 9
                + (numIntegralDigit % 9 == 0 ? 0 : 1)
                + numFractionalDigit / 9
                + (numFractionalDigit % 9 == 0 ? 0 : 1));

        // string
      case CHAR:
      case VARCHAR:
      case BINARY:
      case VARBINARY:
        return width;

      case TINYTEXT:
      case TINYBLOB:
        return 255;
      case TEXT:
      case BLOB:
        return 65535;
      case MEDIUMTEXT:
      case MEDIUMBLOB:
        return 16777215;
      case BIGTEXT:
      case LONGBLOB:
        return Integer.MAX_VALUE;

      case JSON:
      case XML:
        return 1024;

      case CIDR:
      case INET:
        return 19;

      default:
        return 128;
    }
  }

  @Override
  public int[] dimensions() {
    return dimensions;
  }

  @Override
  public void formatAsDataType(StringBuilder builder, String dbType) {
    formatTypeBody(builder, dbType);

    if (valuesList != null && !valuesList.isEmpty())
      builder.append('(').append(String.join(", ", valuesList)).append(')');

    if (dimensions != null && dimensions.length != 0)
      for (int dimension : dimensions) {
        builder.append('[');
        if (dimension != 0) builder.append(dimension);
        builder.append(']');
      }

    if (unsigned) builder.append(" UNSIGNED");
  }

  @Override
  public void formatAsCastType(StringBuilder builder, String dbType) {
    if (MySQL.equals(dbType)) {
      if (category == Category.INTEGRAL)
        if (unsigned) builder.append("UNSIGNED ");
        else builder.append("SIGNED ");

      formatTypeBody(builder, dbType);
    } else { // postgres use same rule for dataType and castType
      formatAsDataType(builder, dbType);
    }
  }

  @Override
  public SqlDataType setUnsigned(boolean unsigned) {
    this.unsigned = unsigned;
    return this;
  }

  @Override
  public SqlDataType setIntervalField(String intervalField) {
    this.intervalField = intervalField;
    return this;
  }

  @Override
  public SqlDataType setValuesList(List<String> valuesList) {
    this.valuesList = valuesList;
    return this;
  }

  @Override
  public SqlDataType setDimensions(int[] dimensions) {
    this.dimensions = dimensions;
    return this;
  }

  private void formatTypeBody(StringBuilder builder, String dbType) {
    builder.append(name.toUpperCase());

    if (intervalField != null) builder.append(' ').append(intervalField);

    if (width != -1 && precision != -1)
      builder.append('(').append(width).append(", ").append(precision).append(')');
    else if (width != -1) builder.append('(').append(width).append(')');
    else if (precision != -1) builder.append('(').append(precision).append(')');
  }

  @Override
  public String toString() {
    final StringBuilder builder = new StringBuilder();
    if (dimensions != null && dimensions.length > 0) formatAsDataType(builder, PostgreSQL);
    else formatAsDataType(builder, MySQL);
    return builder.toString();
  }
}
