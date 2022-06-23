package wtune.superopt.uexpr;

import wtune.superopt.fragment.Symbol;
import wtune.superopt.substitution.Substitution;

import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Map;

public class UExprTranslationResult {
  final Substitution rule;
  final Map<Symbol, TableDesc> symToTable;
  final Map<Symbol, AttrsDesc> symToAttrs;
  final Map<Symbol, PredDesc> symToPred;
  final Map<UVar, SchemaDesc> varToSchema;
  final Map<Symbol, SchemaDesc> symToSchema;
  UTerm srcExpr, tgtExpr;
  UVar srcOutVar, tgtOutVar;

  UExprTranslationResult(Substitution rule) {
    this.rule = rule;
    this.symToTable = new IdentityHashMap<>(8);
    this.symToAttrs = new IdentityHashMap<>(16);
    this.symToPred = new IdentityHashMap<>(8);
    this.varToSchema = new IdentityHashMap<>(8);
    this.symToSchema = new IdentityHashMap<>(8);
  }

  void setVarSchema(UVar var, int... components) {
    varToSchema.put(var, new SchemaDesc(components));
  }

  void setVarSchema(UVar var, SchemaDesc... schema) {
    assert schema.length != 0;
    if (schema.length == 1) varToSchema.put(var, schema[0]);
    else varToSchema.put(var, new SchemaDesc(schema));
  }

  void setSymSchema(Symbol sym, int... components) {
    symToSchema.put(sym, new SchemaDesc(components));
  }

  void setSymSchema(Symbol sym, SchemaDesc... schema) {
    if (schema.length == 1) symToSchema.put(sym, schema[0]);
    else symToSchema.put(sym, new SchemaDesc(schema));
  }

  public Collection<TableDesc> tableTerms() {
    return symToTable.values();
  }

  public Substitution rule() {
    return rule;
  }

  public UTerm sourceExpr() {
    return srcExpr;
  }

  public UTerm targetExpr() {
    return tgtExpr;
  }

  public UVar sourceOutVar() {
    return srcOutVar;
  }

  public UVar targetOutVar() {
    return tgtOutVar;
  }

  public SchemaDesc schemaOf(UVar var) {
    return varToSchema.get(var);
  }

  public SchemaDesc schemaOf(Symbol sym) {
    return symToSchema.get(sym);
  }

  public TableDesc tableDescOf(Symbol sym) {
    return symToTable.get(sym);
  }

  public AttrsDesc attrsDescOf(Symbol sym) {
    return symToAttrs.get(sym);
  }

  public PredDesc predDescOf(Symbol sym) {
    return symToPred.get(sym);
  }

  public String tableNameOf(Symbol sym) {
    final TableDesc tableDesc = symToTable.get(sym);
    return tableDesc == null ? null : tableDesc.term().tableName().toString();
  }

  public String attrsNameOf(Symbol sym) {
    final AttrsDesc attrsDesc = symToAttrs.get(sym);
    return attrsDesc == null ? null : attrsDesc.name().toString();
  }

  public String predNameOf(Symbol sym) {
    final PredDesc predDesc = symToPred.get(sym);
    return predDesc == null ? null : predDesc.name().toString();
  }
}
