package wtune.superopt.runner;

import wtune.superopt.Entry;

import io.javalin.Javalin;

public class HttpServer implements Runner {
    @Override
    public void prepare(String[] argStrings) throws Exception {
    }

    @Override
    public void run() throws Exception {
        var app = Javalin.create().start(12345);
        app.get("/", ctx -> ctx.result("Hello World"));
        app.post("/rewrite", ctx -> {
            RewriteQuery rewriter = new RewriteQuery();
            String numString = ctx.formParam("rng");
            int num = Integer.parseInt(numString);
            rewriter.setRawSQL(ctx.formParam("database"), num, ctx.formParam("sql"));
            var resultSQL = rewriter.insertAndOptimize();
            if (resultSQL == null) {
                ctx.json("{\"success\": false}");
            } else {
                ctx.json("{\"success\": true, \"result\": \"%s\"}".formatted(resultSQL));
            }
        });
    }

    @Override
    public void stop() throws Exception {
        Runner.super.stop();
    }
}