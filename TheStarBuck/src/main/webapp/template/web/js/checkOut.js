const searchBt = document.querySelector(".searchBt");
const ipSearchBox = document.querySelector(".ipSearchBox");

// shadow when scrolling use jquery
$(window).scroll(function () {
    var scroll = $(window).scrollTop();
    if (scroll > 0) {
        $("#header").addClass("active");
    }
    else {
        $("#header").removeClass("active");
    }
});

//search
var countSe = 0;
function add() {
    ipSearchBox.innerHTML = "<input type='text' id='ipSearch' placeholder='Eg: capuchino'> ";
}
function remove() {
    ipSearchBox.innerHTML = "";
}
function onclick() {
    ipSearchBox.classList.toggle("section")
    if (countSe === 0) {
        add();
        countSe++;
    } else {
        remove();
        countSe = 0;
    }
}
searchBt.addEventListener("click", onclick);