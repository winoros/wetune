package wtune.stmt.support;

import wtune.stmt.dao.IssueDao;

import java.util.List;

public interface Issue {
  String app();

  int stmtId();

  static List<Issue> findAll() {
    return IssueDao.instance().findAll();
  }
}
