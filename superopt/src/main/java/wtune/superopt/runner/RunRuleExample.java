package wtune.superopt.runner;

import wtune.common.utils.Args;
import wtune.sql.ast.SqlNode;
import wtune.superopt.substitution.Substitution;
import wtune.superopt.substitution.SubstitutionBank;
import wtune.superopt.uexpr.UExprSupport;
import wtune.superopt.uexpr.UExprTranslationResult;
import wtune.superopt.logic.LogicSupport;

import static wtune.sql.plan.PlanSupport.translateAsAst;
import static wtune.superopt.substitution.SubstitutionSupport.*;

public class RunRuleExample implements Runner {
  private Substitution rule;

  @Override
  public void prepare(String[] argStrings) throws Exception {
    final Args args = Args.parse(argStrings, 1);
    final String rules = args.getOptional("R", "rules", String.class, "prepared/rules.example.txt");
    final SubstitutionBank bank = loadBank(RunnerSupport.dataDir().resolve(rules));
    final int index = args.getOptional("I", "index", int.class, 0);
    for (Substitution rule : bank.rules()) {
      if (rule.id() == index) {
        this.rule = rule;
        break;
      }
    }
    if (this.rule == null) throw new IllegalArgumentException("No such rule: " + index);
  }

  @Override
  public void run() throws Exception {
    runBasic(rule);
    if (rule.id() > 31) {
      runSpes(rule);
    } else {
      runBuiltin(rule);
    }
  }

  private static void runBasic(Substitution rule) {
    System.out.println("1. Rule String");
    System.out.println("  " + rule);
    System.out.println();

    final var pair = rule.id() > 31 ? translateAsPlan2(rule) : translateAsPlan(rule);
    final SqlNode q0 = translateAsAst(pair.getLeft(), pair.getLeft().root(), true);
    final SqlNode q1 = translateAsAst(pair.getRight(), pair.getRight().root(), true);

    System.out.println("2. Example Query");
    System.out.println("  " + q0);
    System.out.println("  " + q1);
    System.out.println();
  }

  private static void runBuiltin(Substitution rule) {
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    System.out.println("3. U-Expression");
    System.out.println("  [[q0]](" + uExprs.sourceOutVar() + ") := " + uExprs.sourceExpr());
    System.out.println("  [[q1]](" + uExprs.targetOutVar() + ") := " + uExprs.targetExpr());
    System.out.println();

    System.out.println("4. First-Order Formulas (Z3 Script)");
    LogicSupport.setDumpFormulas(true);
    final int result = LogicSupport.proveEq(uExprs);
    System.out.println();
    System.out.println("Rule-" + rule.id() + ": " + LogicSupport.stringifyResult(result));
  }

  private static void runSpes(Substitution rule) {
    final int result = LogicSupport.proveEqBySpes(rule);
    System.out.println();
    System.out.println("Rule-" + rule.id() + ": " + LogicSupport.stringifyResult(result));
  }
}
