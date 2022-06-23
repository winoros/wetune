package wtune.testbed.profile;

import com.google.common.collect.Iterables;
import wtune.sql.schema.Column;
import wtune.sql.support.resolution.JoinGraph;
import wtune.sql.support.resolution.ParamDesc;
import wtune.sql.support.resolution.Params;
import wtune.sql.support.resolution.Relation;
import wtune.testbed.common.Element;
import wtune.testbed.population.Generator;
import wtune.testbed.population.Generators;
import wtune.testbed.population.PopulationConfig;

import java.lang.System.Logger.Level;
import java.util.*;

import static wtune.testbed.profile.Profiler.LOG;

public class ParamsGenImpl implements ParamsGen {
  private final Params params;
  private final Generators generators;
  private final JoinGraph joinGraph;
  private final PopulationConfig populationConfig;

  private List<Relation> pivotRelations;
  private Map<Relation, Integer> seeds;
  private Map<ParamDesc, Object> values;

  ParamsGenImpl(Params params, Generators generators) {
    this.params = params;
    this.generators = generators;
    this.joinGraph = params.joinGraph();
    this.populationConfig = generators.config();
    this.populationConfig.setNeedPrePopulation(true);
  }

  @Override
  public Params params() {
    return params;
  }

  @Override
  public Generators generators() {
    return generators;
  }

  @Override
  public List<Relation> pivotRelations() {
    return pivotRelations;
  }

  @Override
  public Map<ParamDesc, Object> values() {
    return values;
  }

  @Override
  public void setPivotTables(List<Relation> pivotRelations) {
    this.pivotRelations = pivotRelations;
  }

  @Override
  public boolean setPivotSeed(int seed) {
    if (seeds == null) seeds = new IdentityHashMap<>();
    else seeds.clear();

    if (pivotRelations == null) pivotRelations = determinePivotRelations(joinGraph);

    for (Relation pivotTable : pivotRelations)
      if (!setPivotSeed0(pivotTable, seed)) {
        return false;
      }

    assert seeds.size() == joinGraph.tables().size();
    return true;
  }

  @Override
  public int seedOf(Relation relation) {
    return seeds.getOrDefault(relation, 0);
  }

  @Override
  public boolean generateAll() {
    if (values == null) values = new IdentityHashMap<>();
    else values.clear();
    return params.forEach(this::generateOne);
  }

  private boolean generateOne(ParamDesc param) {
    final ParamGen gen = new ParamGen(this, param);
    if (!gen.generate()) return false;
    values.put(param, gen.value());
    return true;
  }

  private boolean setPivotSeed0(Relation relation, int seed) {
    if (seeds.containsKey(relation)) return true;

    seeds.put(relation, seed);

    for (Relation joined : joinGraph.getJoined(relation)) {
      final JoinGraph.JoinKey joinKey = joinGraph.getJoinKey(relation, joined);

      final Column leftCol = joinKey.lhsKey(), rightCol = joinKey.rhsKey();
      final Generator leftGen = generators.bind(Element.ofColumn(leftCol));
      final Generator rightGen = generators.bind(Element.ofColumn(rightCol));

      final int rightUnits = populationConfig.unitCountOf(joinKey.rhsKey().tableName());
      final Object target = leftGen.generate(seed);
      final int rightSeed =
          rightGen.locate(target).filter(it -> it >= 0 && it < rightUnits).findFirst().orElse(-1);

      if (rightSeed == -1) {
        LOG.log(
            Level.DEBUG,
            "cannot find {0} in {1}. cannot set seed {2} for {3}",
            target,
            rightCol,
            seed,
            relation);
        return false;
      }

      if (!setPivotSeed0(joinKey.rhsTable(), rightSeed)) return false;
    }

    return true;
  }

  private static List<Relation> determinePivotRelations(JoinGraph graph) {
    final List<Set<Relation>> scc = graph.getSCC();
    final List<Relation> pivotRelations = new ArrayList<>(scc.size());
    for (Set<Relation> component : scc) pivotRelations.add(Iterables.get(component, 0));
    return pivotRelations;
  }
}
