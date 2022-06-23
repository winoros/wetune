package wtune.demo.util;

import wtune.superopt.substitution.Substitution;
import wtune.superopt.substitution.SubstitutionBank;

public class RuleSupport {
  public static SubstitutionBank loadRuleBank(Iterable<String> ruleStrs) {
    final SubstitutionBank bank = SubstitutionBank.mk();

    int ruleNum = 0;
    for (String ruleStr : ruleStrs) {
      ++ruleNum;

      if (ruleStr.isEmpty() || !Character.isLetter(ruleStr.charAt(0))) continue;

      final Substitution rule = Substitution.parse(ruleStr);
      bank.add(rule);
      rule.setId(ruleNum);
    }
    return bank;
  }
}
