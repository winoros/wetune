package wtune.testbed.runner;

import wtune.common.utils.Args;
import wtune.common.utils.IOSupport;
import wtune.stmt.CalciteStmtProfile;
import wtune.stmt.support.UpdateProfile;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

public class UpdateCalciteProfileData implements Runner {
  private Path profileFile;

  @Override
  public void prepare(String[] argStrings) throws Exception {
    final Args args = Args.parse(argStrings, 1);

    final Path dataDir = Runner.dataDir();
    final Path dir = dataDir.resolve(args.getOptional("D", "dir", String.class, "profile_calcite"));
    profileFile = dir.resolve(args.getRequired("in", String.class));
    IOSupport.checkFileExists(profileFile);
  }

  @Override
  public void run() throws Exception {
    final List<String> lines = Files.readAllLines(profileFile);
    UpdateProfile.cleanCalcite();
    for (int i = 0, bound = lines.size(); i < bound; i += 2) {
      final String[] baseProfile = lines.get(i).split(";");
      final String[] optProfile = lines.get(i + 1).split(";");

      final String appName = baseProfile[0];
      final String appId = baseProfile[1];

      Long p50Base = null,
          p90Base = null,
          p99Base = null,
          p50OptCalcite = null,
          p90OptCalcite = null,
          p99OptCalcite = null,
          p50OptWeTune = null,
          p90OptWeTune = null,
          p99OptWeTune = null;

      p50Base = Long.parseLong(baseProfile[3]);
      p90Base = Long.parseLong(baseProfile[4]);
      p99Base = Long.parseLong(baseProfile[5]);

      if (optProfile[2].split("_")[1].equals("cal")) {
        p50OptCalcite = Long.parseLong(optProfile[3]);
        p90OptCalcite = Long.parseLong(optProfile[4]);
        p99OptCalcite = Long.parseLong(optProfile[5]);
      } else {
        p50OptWeTune = Long.parseLong(optProfile[3]);
        p90OptWeTune = Long.parseLong(optProfile[4]);
        p99OptWeTune = Long.parseLong(optProfile[5]);
      }

      if (i + 2 < bound) {
        final String[] nextProfile = lines.get(i + 2).split(";");
        if (nextProfile[0].equals(appName) && nextProfile[1].equals(appId)) {
          final String[] optProfile1 = lines.get(i + 3).split(";");
          if (optProfile1[2].split("_")[1].equals("cal")) {
            p50OptCalcite = Long.parseLong(optProfile1[3]);
            p90OptCalcite = Long.parseLong(optProfile1[4]);
            p99OptCalcite = Long.parseLong(optProfile1[5]);
          } else {
            p50OptWeTune = Long.parseLong(optProfile1[3]);
            p90OptWeTune = Long.parseLong(optProfile1[4]);
            p99OptWeTune = Long.parseLong(optProfile1[5]);
          }
          i += 2;
        }
      }

      UpdateProfile.updateCalciteProfile(
          CalciteStmtProfile.mk(
              appName,
              Integer.parseInt(appId),
              p50Base,
              p90Base,
              p99Base,
              p50OptCalcite,
              p90OptCalcite,
              p99OptCalcite,
              p50OptWeTune,
              p90OptWeTune,
              p99OptWeTune));
    }
  }
}
