var http = require('http');

var server = http.createServer(function(req, res) {
	res.writeHead(200);
	res.end('Hello docker!');
});
server.listen(8081, function() {
	console.log("Запущено, работаю хозяин ( http://localhost:8082/ )");
});