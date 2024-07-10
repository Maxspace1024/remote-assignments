function ajax(src, callback) {
    // your code here
    fetch(src)
    .then(r => r.json())
    .then(data => {callback(data)})
}
function render(data) {
    // your code here
    // document.createElement() and appendChild() methods are preferred.
    let tbody = document.querySelector("tbody")
    for(let i=0; i<data.length; i++) {
        let trow = document.createElement("tr")
        let td = document.createElement("td")
        td.innerText = data[i].name
        trow.appendChild(td)
        td = document.createElement("td")
        td.innerText = data[i].price
        trow.appendChild(td)
        td = document.createElement("td")
        td.innerText = data[i].description
        trow.appendChild(td)
        tbody.appendChild(trow)
    }
}
ajax(
    'https://remote-assignment.s3.ap-northeast-1.amazonaws.com/products',
    function (response) {
        render(response);
    }
); // you should get product information in JSON format and render data in the page