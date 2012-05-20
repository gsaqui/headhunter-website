
package com.headhunter;

import org.vertx.java.busmods.BusModBase;
import org.vertx.java.core.Handler;
import org.vertx.java.core.http.HttpServer;
import org.vertx.java.core.http.HttpServerRequest;
import org.vertx.java.core.json.JsonArray;
import org.vertx.java.core.json.JsonObject;
import org.vertx.java.core.sockjs.SockJSServer;
public class WebServer extends BusModBase implements Handler<HttpServerRequest> {

  private String webRootPrefix;
  private String indexPage;

  public void start() {
    super.start();

    HttpServer server = vertx.createHttpServer();    
	server.requestHandler(this);
    String webRoot = getOptionalStringConfig("web_root", "web");
    String index = getOptionalStringConfig("index_page", "index.html");
    webRootPrefix = webRoot + File.separator;
    indexPage = webRootPrefix + index;

    server.listen(getOptionalIntConfig("port", 80), getOptionalStringConfig("host", "0.0.0.0"));
  }

  public void handle(HttpServerRequest req) {
    if (req.path.equals("/")) {
      req.response.sendFile(indexPage);
    } else if (!req.path.contains("..")) {
      req.response.sendFile(webRootPrefix + req.path);
    } else {
      req.response.statusCode = 404;
      req.response.end();
    }
  }
}