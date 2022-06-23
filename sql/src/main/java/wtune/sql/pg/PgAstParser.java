package wtune.sql.pg;

import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.ParserRuleContext;
import wtune.common.datasource.DbSupport;
import wtune.sql.ast.SqlNode;
import wtune.sql.parser.AstParser;
import wtune.sql.parser.ThrowingErrorListener;
import wtune.sql.pg.internal.PGLexer;
import wtune.sql.pg.internal.PGParser;

import java.util.function.Function;

public class PgAstParser implements AstParser {
  public SqlNode parse(String str, Function<PGParser, ParserRuleContext> rule) {
    final PGLexer lexer = new PGLexer(CharStreams.fromString(str));
    final PGParser parser = new PGParser(new CommonTokenStream(lexer));

    lexer.removeErrorListeners();
    lexer.addErrorListener(ThrowingErrorListener.instance());
    parser.removeErrorListeners();
    parser.addErrorListener(ThrowingErrorListener.instance());

    //    lexer.getInterpreter().clearDFA();
    //    parser.getInterpreter().clearDFA();
    return rule.apply(parser).accept(new PgAstBuilder());
  }

  @Override
  public SqlNode parse(String string) {
    final SqlNode ast = parse(string, PGParser::statement);
    if (ast == null) return null;
    ast.context().setDbType(DbSupport.PostgreSQL);
    return ast;
  }
}
