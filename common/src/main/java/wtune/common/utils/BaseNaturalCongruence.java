package wtune.common.utils;

public class BaseNaturalCongruence<T> extends BaseCongruence<T, T> implements NaturalCongruence<T> {
  @Override
  protected T extractKey(T t) {
    return t;
  }
}
