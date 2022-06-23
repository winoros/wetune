package wtune.stmt.dao;

import wtune.stmt.dao.internal.DbIssueDao;
import wtune.stmt.support.Issue;

import java.util.List;

public interface IssueDao {
  List<Issue> findAll();

  List<Issue> findByApp(String appName);

  List<Issue> findUnchecked(String appName);

  static IssueDao instance() {
    return DbIssueDao.instance();
  }
}
