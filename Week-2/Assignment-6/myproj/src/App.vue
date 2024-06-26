<template>
  <div class="root">
    <header>
      <nav class="nav-bar">
        <ul class="row">
          <li class="item"><img class="logo" src="@/assets/icon_project_256.png"></li>
          <li class="item">Brian's Project</li>
        </ul>
        <ul class="row">
          <li class="item"><a href="#">Project</a></li>
          <li class="item"><a href="#">Works</a></li>
          <li class="item"><a href="#">Schedule</a></li>
          <li class="item"><a href="#">Certification</a></li>
        </ul>
      </nav>
    </header>
    <main>
      <div class="kanban" @click="kanbanClick">
        <h1>{{welTitle }}</h1>
      </div>
      <section>
        <h1>Section title</h1>
        <div class="container">
            <div class="card"><h1>content box 1</h1></div>
            <div class="card"><h1>content box 2</h1></div>
            <div class="card"><h1>content box 3</h1></div>
            <div class="card"><h1>content box 4</h1></div>
        </div>
        <div>
          <h1><button @click="showCard">Call to Action</button></h1>
        </div>
        <div id="hidden-container" class="container" style="display: none;">
            <div class="card"><h1>content box 5</h1></div>
            <div class="card"><h1>content box 6</h1></div>
            <div class="card"><h1>content box 7</h1></div>
            <div class="card"><h1>content box 8</h1></div>
        </div>
      </section>
    </main>
  </div>
</template>

<script setup>
import {ref} from 'vue';
const welTitle = ref("Welcome Message")

function kanbanClick() {
  welTitle.value = "Have a good Time!";
}

function showCard() {
  document.getElementById("hidden-container").style.display = "flex";
}

</script>

<style>
body {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  font-family: 'Arial Narrow', Arial, sans-serif;
}

@media screen and (min-width: 1200px) {
  .root {
    width: 1200px;
  }
}

ul {
  margin: 0px;
  padding: 0px;
}

a {
  text-decoration: none;
  color: black;
}

h1 {
  text-align: center;
}

.row {
  display: flex;
  flex-direction: row;
  gap: 1rem;
}
.col {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}
.item {
  display: inline-block;
}
.logo {
  width: 32px;
  height: 32px;
}

.root {
  background-color: ivory;
  margin: 0 auto;
  padding: 1rem 0;
}

.nav-bar {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  font-size: 1.25rem;
  padding: 1rem 2rem;
}

.kanban {
  background-color: lightsteelblue;
  align-content: center;
  height: 240px;
}

.container {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: center;
  gap: 1rem;
  width: 800px;
  margin: 0 auto;
}

.card {
  background-color: lightsteelblue;
  width: 300px;
  height: 200px;
  border-radius: 5px;
}

button {
  padding: 1rem;
}

</style>
