package wtune.stmt.support.internal;

import wtune.stmt.support.Issue;

public record IssueImpl(String app, int stmtId) implements Issue { }
