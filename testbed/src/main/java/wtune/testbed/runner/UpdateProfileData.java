package wtune.testbed.runner;

import wtune.common.utils.Args;
import wtune.common.utils.IOSupport;
import wtune.stmt.StmtProfile;
import wtune.stmt.support.OptimizerType;
import wtune.stmt.support.UpdateProfile;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

public class UpdateProfileData implements Runner {
  private Path profileFile;
  private OptimizerType optimizer;

  @Override
  public void prepare(String[] argStrings) throws Exception {
    final Args args = Args.parse(argStrings, 1);

    final Path dataDir = Runner.dataDir();
    final Path dir = dataDir.resolve(args.getOptional("D", "dir", String.class, "profile"));
    final String optimizedBy = args.getOptional("opt", "optimizer", String.class, "WeTune");
    optimizer = OptimizerType.valueOf(optimizedBy);
    profileFile = dir.resolve(optimizedBy).resolve(args.getRequired("in", String.class));

    IOSupport.checkFileExists(profileFile);
  }

  @Override
  public void run() throws Exception {
    final List<String> lines = Files.readAllLines(profileFile);
    for (int i = 0, bound = lines.size(); i < bound; i += 2) {
      if (i + 1 >= bound) {
        System.out.println("error in profile file.");
        break;
      }

      final String[] baseProfile = lines.get(i).split(";");
      final String[] optProfile = lines.get(i + 1).split(";");

      final String appName = baseProfile[0];
      final int appId = Integer.parseInt(baseProfile[1]);
      final String workloadType = baseProfile[2].split("_")[0];

      final long p50Base = Long.parseLong(baseProfile[3]),
          p90Base = Long.parseLong(baseProfile[4]),
          p99Base = Long.parseLong(baseProfile[5]),
          p50Opt = Long.parseLong(optProfile[3]),
          p90Opt = Long.parseLong(optProfile[4]),
          p99Opt = Long.parseLong(optProfile[5]);
      final StmtProfile profile =
          StmtProfile.mk(
              appName, appId, workloadType, p50Base, p90Base, p99Base, p50Opt, p90Opt, p99Opt);

      UpdateProfile.updateProfile(profile, optimizer);
    }
  }
}
