function myFunction() {

    var currentdate = new Date();
    var datetime =
        currentdate.getHours() + ":"
        + currentdate.getMinutes() + ":"
        + currentdate.getSeconds();

    window.alert(datetime)
}
function changeColor(color){
    document.body.style.background = '#'+Math.floor(Math.random()*16777215).toString(16);
}

function reload(){
    window.location.reload()
}
function openWin() {
    window.open("./index.html");
  }

  function consoles()
{
console.log("I did it")
}
function nextPage(){
    location.href = "http://127.0.0.1:8080/page-3/chart.html";
}
function saveData(){
    var input = document.getElementById("saveServer");
    localStorage.setItem("server", input.value);
    var storedValue = localStorage.getItem("server");
    console.log(storedValue)
  }