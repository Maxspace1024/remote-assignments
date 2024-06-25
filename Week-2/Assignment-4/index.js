document.addEventListener('DOMContentLoaded', () => {
    let kanban = document.querySelector("#kanban")
    let kanbanTitle = document.querySelector("#kanban > h1")
    kanban.addEventListener('click',() => {
        kanbanTitle.innerHTML = 'Have a Good Time!'
    })

    let showMore = document.querySelector("#show-more")
    let container2 = document.querySelector("#container-2")
    showMore.addEventListener("click", () => {
        container2.style.display = "flex"
    })
})