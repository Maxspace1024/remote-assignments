function avg(data) {
    let products = data.products;
    let sum = 0;
    for(let i=0; i<products.length; i++) {
        sum += products[i].price;
    }
    
    let avg = sum/data.size;
    return avg;
}
console.log(
    avg({
        size: 3,
        products: [
            {
                name: 'Product 1',
                price: 100,
            },
            {
                name: 'Product 2',
                price: 700,
            },
            {
                name: 'Product 3',
                price: 250,
            },
        ],
    })
); // should print the average price of all products