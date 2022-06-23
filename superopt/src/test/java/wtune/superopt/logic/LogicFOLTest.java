package wtune.superopt.logic;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import wtune.common.utils.IOSupport;
import wtune.superopt.substitution.Substitution;
import wtune.superopt.substitution.SubstitutionBank;
import wtune.superopt.substitution.SubstitutionSupport;
import wtune.superopt.uexpr.UExprSupport;
import wtune.superopt.uexpr.UExprTranslationResult;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

@Tag("fol")
@Tag("fast")
public class LogicFOLTest {
  private static Path dataDir() {
    return Path.of(System.getProperty("wetune.data_dir", "wtune_data"));
  }

  @Test
  public void dumpUexpr() throws IOException {
    final Path ruleFilePath = dataDir().resolve("prepared").resolve("rules.example.txt");
    final Path outPath = dataDir().resolve("logic").resolve("rules.example2.tsv");
    if (!Files.exists(outPath)) {
      Files.createDirectories(outPath.getParent());
      Files.createFile(outPath);
    }

    final SubstitutionBank rules = SubstitutionSupport.loadBank(ruleFilePath);
    final List<Substitution> rulesList = rules.rules().stream().toList();

    final int startRuleId = 31;
    for (Substitution rule : rules.rules()) {
      if (rule.id() > 31) break;
      if (rule.id() < startRuleId) continue;
      System.out.println(rule.id());
      System.out.println(rule);
      final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
      System.out.println("  [[q0]](" + uExprs.sourceOutVar() + ") := " + uExprs.sourceExpr());
      System.out.println("  [[q1]](" + uExprs.targetOutVar() + ") := " + uExprs.targetExpr());
      //IOSupport.appendTo(
      //    outPath,
      //    writer ->
      //        writer.printf(
      //            "%s\t%s\t%s\n",
      //            rule.toString(), uExprs.sourceExpr().toString(), uExprs.targetExpr().toString()));
      LogicSupport.setDumpFormulas(true);
      final int result = LogicSupport.proveEq(uExprs);
      System.out.println("Rule-" + rule.id() + ": " + LogicSupport.stringifyResult(result));
      assertEquals(LogicSupport.EQ, result, rule.toString());
      break;
    }
  }

  @Test
  public void testFOL1() {
    final Substitution rule =
        Substitution.parse(
            "Filter<p0 b0>(Proj<a0 s0>(Input<t0>))|"
                + "Proj<a1 s1>(Filter<p1 b1>(Input<t1>))|"
                + "AttrsSub(b0,s0);AttrsSub(a0,t0);SchemaEq(s1,s0);TableEq(t1,t0);AttrsEq(b1,b0);AttrsEq(a1,a0);PredicateEq(p1,p0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result, rule.toString());
  }
}
