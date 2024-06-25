function count(input) {
// your code here
    let map = {}
    for(let i=0; i<input.length; i++) {
        if(input[i] in map) {
            map[input[i]] += 1;
        } else {
            map[input[i]] = 1;
        }
    }
    return map;
}
let input1 = ["a", "b", "c", "a", "c", "a", "x"];
console.log(count(input1));
// should print {a:3, b:1, c:2, x:1}

function groupByKey(input) {
    let map = {};
    for(let i=0; i<input.length; i++) {
        if(input[i].key in map) {
            map[input[i].key] += input[i].value;
        } else {
            map[input[i].key] = input[i].value;
        }
    }
    return map;
}
let input2 = [
    { key: "a", value: 3 },
    { key: "b", value: 1 },
    { key: "c", value: 2 },
    { key: "a", value: 3 },
    { key: "c", value: 5 },
];
console.log(groupByKey(input2));
// should print {a:6, b:1, c:7}