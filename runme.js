var test = require("./build/Release/example");
console.log(test);
Object.keys(test).forEach(function (key) {
    exports[key] = test[key];
});
exports.here = function () {
    return 'Inside runme';
};
console.log(exports);
var a = [1.0, 2.0, 3.0, 4.0], b = [1, 1, 1, 1];
var dot = test.opt(a.length, a, b);
console.log(dot);
console.log(b);
console.log(test.Return_Message(6));
console.log(test.version());
var idot = test.iopt(b.length, b, b);
console.log(idot);
console.log(b);
console.log('Using optimiser for dot: ' + test.ddotvec(a.length, a, b));
