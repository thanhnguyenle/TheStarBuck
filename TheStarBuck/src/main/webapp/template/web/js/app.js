
const starbucks = document.querySelector(".starbucks");
const thumb1 = document.querySelector("#thumb1");
const thumb2 = document.querySelector("#thumb2");
const thumb3 = document.querySelector("#thumb3");
const starbuckAv = document.querySelector("#starbuckAv");
const circle = document.querySelector(".circle");
const menuToggle = document.querySelector(".imgBox");
const navigation = document.querySelector(".navigation");
const searchBt = document.querySelector(".searchBt");
const ipSearchBox = document.querySelector(".ipSearchBox");

// console.log(circle.style.backgroundColor);
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


function imgSlider(event) {
    const temp = event.target.id;
    if (temp === thumb1.id) {
        starbuckAv.src = "images/img1.png";
        circle.style.backgroundColor = "#017143";
    } else if (temp === thumb2.id) {
        starbuckAv.src = "images/img2.png";
        circle.style.backgroundColor = "#eb7495";
    } else if (temp === thumb3.id) {
        starbuckAv.src = "images/img3.png";
        circle.style.backgroundColor = "#d752b1";
    }

}

function toggleMenu() {
    menuToggle.classList.toggle("active");
    navigation.classList.toggle("active");
}

thumb1.addEventListener("click", imgSlider);
thumb2.addEventListener("click", imgSlider);
thumb3.addEventListener("click", imgSlider);
menuToggle.addEventListener("click", toggleMenu);

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