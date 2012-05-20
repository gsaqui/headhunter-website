import org.vertx.groovy.core.http.RouteMatcher

String webRootPrefix = ".."

// Inspired from Sinatra / Express
def rm = new RouteMatcher()

// Extract the params from the uri
rm.get('/details/:user/:id') { req ->
  // And just spit them out in the response
  req.response.end "User: ${req.params['user']} ID: ${req.params['id']}"
}

rm.get('/') { req ->
  // And just spit them out in the response
  req.response.sendFile webRootPrefix +"/"+ "index.html"
}

rm.get('/contactUs/data'){ req ->
println "params $req.params"
println "query $req.query"
	req.params.each{k,v ->
		println "  - $k=$v"
	}
	req.response.end "thanks dude"
}

// Catch all - serve the index page
rm.getWithRegEx('.*') { req ->
 	req.response.sendFile "${webRootPrefix + req.path}"
}


rm.post('/contactUs/:data'){ req ->
println "data: ${req.params['data']}"
	req.params.each{k,v ->
		println "  - $k=$v"
	}

	req.response.end "thanks dude"
}

rm.postWithRegEx('.*'){req->
	println req.path
	req.response.end "no dude"	
}


def server = vertx.createHttpServer()
//server.requestHandler ( rm.asClosure() ).listen(8080, "localhost")
server.requestHandler{ req ->
	req.params.each{k,v ->
		println "  - $k=$v"
	}

	
  	if(req.method == "GET"){
		if(req.uri == '/'){
			req.response.sendFile "${webRootPrefix}/index.html"
		}else{
			req.response.sendFile "${webRootPrefix + req.path}"
		}
		}
	if(req.method == "POST"){			
		req.response.end "thanks dude"
	}	
}
// The handler for the SockJS app - we just echo data back
vertx.createSockJSServer(server).installApp(prefix: '/socks') { sock ->
  sock.dataHandler { buff ->
	println buff[0]
    sock << buff
  }
}

server.listen(8080, "localhost")