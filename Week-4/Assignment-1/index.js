// QUES A
function delayedResult(n1, n2, delayTime, callback) {
    let res = null
    setTimeout(() => {
        res = n1 + n2
        callback(res)
    }, delayTime)
}
console.log("Execute QUES-A")
delayedResult(4, 5, 3000, function (result) {
    console.log(result);
}); // 9 (4+5) will be shown in the console after 3 seconds
delayedResult(-5, 10, 2000, function (result) {
    console.log(result);
}); // 5 (-5+10) will be shown in the console after 2 seconds


// QUES B
function delayedResultPromise(n1, n2, delayTime) {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve(n1 + n2)
        }, delayTime)
    })
}
console.log("Execute QUES-B")
delayedResultPromise(4, 5, 3000).then(console.log);
// 9 (4+5) will be shown in the console after 3 seconds


async function main() {
    let res = await delayedResultPromise(4,7, 5000)
    console.log(res)
}
main(); // result will be shown in the console after <delayTime> seconds