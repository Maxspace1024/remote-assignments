function countAandB(input) {
    var sum = 0;
    for(var i = 0; i< input.length; i++) {
        // 若等於'a' or 'b'則計數加一
        if(input[i] == 'a' || input[i] == 'b') {
            sum++;
        }
    }
    return sum;
}
function toNumber(input) {
    var res = [];
    for(var i = 0; i< input.length; i++) {
        // ascii code 'a' is 97
        res.push(input[i].charCodeAt(0) - 97 + 1);
    }
    return res;
}
let input1 = ['a', 'b', 'c', 'a', 'c', 'a', 'c'];
console.log(countAandB(input1)); // should print 4 (3 ‘a’ letters and 1 ‘b’ letter)
console.log(toNumber(input1)); // should print [1, 2, 3, 1, 3, 1, 3]
let input2 = ['e', 'd', 'c', 'd', 'e'];
console.log(countAandB(input2)); // should print 0
console.log(toNumber(input2));