document.addEventListener("DOMContentLoaded", () => {
    let input = document.querySelector("#input");
    let btn = document.querySelector("#btn")
    let result = document.querySelector("#result")

    let xhr = new XMLHttpRequest()
    xhr.onreadystatechange = () => {
        if (xhr.readyState === 4) {
            if(xhr.status === 200) {
                result.innerText = xhr.responseText
                input.value = "";
            }
        }
    }

    btn.addEventListener("click", () => {
        xhr.open("GET", `data?number=${input.value}`)
        xhr.send()
    })
})