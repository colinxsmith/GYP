var test = require("./build/Release/example");
//var http = require('http');




var a = [1.0,2.0,3.0,4.0],b = [1,1,1,1];


var dot = test.opt(a.length,a,b);
console.log(dot);
console.log(b);

console.log(test.Return_Message(6));
console.log(test.version());

var idot = test.iopt(b.length,b,b);
console.log(idot);
console.log(b);

/* http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.write(test.version());
    res.end();
}).listen(8080); */
