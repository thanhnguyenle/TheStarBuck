const openNav = document.querySelector(".open-btn");
const closeNav = document.querySelector(".close-btn");
const menu = document.querySelector(".nav-list");
const searchBt = document.querySelector(".searchBt");
const ipSearchBox = document.querySelector(".ipSearchBox");
const iconUp = document.querySelector(".iconUp");
const clickKA = document.querySelector("#clickKA");
const clickThanh = document.querySelector("#clickThanh");
const clickNhu = document.querySelector("#clickNhu");
const cClickKA = document.querySelector(".clickKA");
const cClickThanh = document.querySelector(".clickThanh");
const cClickNhu = document.querySelector(".clickNhu");


console.log("abcd");

closeNav.addEventListener("click", () => {
  menu.classList.remove("show");
});

var flag = 0;
function add1() {
    menu.classList.add("show");
}
function remove1() {
  menu.classList.remove("show");
}
function onclick1() {
    if (flag === 0) {
        add1();
        flag++;
    } else {
        remove1();
        flag = 0;
    }
}
openNav.addEventListener("click", onclick1);


// Fixed Nav
const navBar = document.querySelector(".nav");
const navHeight = navBar.getBoundingClientRect().height;
window.addEventListener("scroll", () => {
  const scrollHeight = window.pageYOffset;
  if (scrollHeight > navHeight) {
    navBar.classList.add("fix-nav");
  } else {
    navBar.classList.remove("fix-nav");
  }
});

// Scroll To
const links = [...document.querySelectorAll(".scroll-link")];
links.map((link) => {
  if (!link) return;
  link.addEventListener("click", (e) => {
    e.preventDefault();

    const id = e.target.getAttribute("href").slice(1);

    const element = document.getElementById(id);
    const fixNav = navBar.classList.contains("fix-nav");
    let position = element.offsetTop - navHeight;

    window.scrollTo({
      top: position,
      left: 0,
    });

    navBar.classList.remove("show");
    menu.classList.remove("show");
    document.body.classList.remove("show");
  });
});






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


var count = 0;
const onClickChangeAd = (event) => {
    const temp = event.target.id;
    console.log(temp);
    if(count === 0 &&temp === "clickNhu"){
       cClickNhu.style.color='#000000';
       count++;
    }
    else if(temp === "clickNhu"){
      cClickNhu.style.color='#ffffff';
      count = 0;
    }
}

var count1 = 0;
const onClickChangeAd1 = (event) => {
    const temp = event.target.id;
    console.log(temp);
    if(count1 === 0 &&temp === "clickThanh"){
       cClickThanh.style.color='#000000';
       count1++;
    }
    else if(temp === "clickThanh"){
      cClickThanh.style.color='#ffffff';
      count1 = 0;
    }
  }

 var count2 = 0;
const onClickChangeAd2 = (event) => {
    const temp = event.target.id;
    console.log(temp);
    if(count2 === 0 &&temp === "clickKA"){
       cClickKA.style.color='#000000';
       count2++;
    }
    else if(temp === "clickKA"){
      cClickKA.style.color='#ffffff';
      count2 = 0;
    }
  }

clickKA.addEventListener("click", onClickChangeAd2);
clickNhu.addEventListener("click", onClickChangeAd);
clickThanh.addEventListener("click", onClickChangeAd1);


window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 30 || document.documentElement.scrollTop > 30) {
    iconUp.style.display = "block";
    iconUp.style.color="#00a05d"
  } else {
    iconUp.style.display = "none";
    topFunction();
  }
}


function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
iconUp.addEventListener("click", scrollFunction);
