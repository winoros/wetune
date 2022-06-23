module wetune.demo.main {
    exports wtune.demo.optimize;
    exports wtune.demo.equivalence;
    exports wtune.demo.util;

    requires wtune.common;
    requires wtune.superopt;
    requires wtune.sql;
    requires wtune.stmt;
}