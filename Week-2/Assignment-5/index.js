function binarySearchPosition(numbers, target) {
    let minIndex = 0;
    let maxIndex = numbers.length - 1;
    do {
        let middleIndex = Math.floor((minIndex + maxIndex)/2);
        let pivot = numbers[middleIndex];
        if (pivot === target) {
            return middleIndex;
        } else if (pivot > target) {
            maxIndex = middleIndex - 1;
        } else if (pivot < target) {
            minIndex = middleIndex + 1;
        }
    } while(minIndex <= maxIndex);
    return -1;
}
console.log(binarySearchPosition([1, 2, 5, 6, 7], 1)); // should print 0
console.log(binarySearchPosition([1, 2, 5, 6, 7], 6)); // should print 3