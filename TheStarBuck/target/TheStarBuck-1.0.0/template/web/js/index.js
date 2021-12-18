const starbucks = document.querySelector(".starbucks");
const thumb1 = document.querySelector("#thumb1");
const thumb2 = document.querySelector("#thumb2");
const thumb3 = document.querySelector("#thumb3");
const starbuckAv = document.querySelector("#starbuckAv");
const circle = document.querySelector(".circle");
const menuToggle = document.querySelector(".imgBox");
const navigation = document.querySelector(".navigation");

const openNav = document.querySelector(".open-btn");
const closeNav = document.querySelector(".close-btn");
const menu = document.querySelector(".nav-list");
const searchBt = document.querySelector(".searchBt");
const ipSearchBox = document.querySelector(".ipSearchBox");
const iconUp = document.querySelector(".iconUp");
const mySwiper = document.querySelector(".mySwiper");
const title_banner = document.querySelector("#hero1");
const title_h2 = document.querySelector("#title_hero1");
const title_p = document.querySelector("#text_hero1");

console.log(title_banner);

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
  // openNav.classList.toggle("label")
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
  ipSearchBox.classList.toggle("searchBar")
  if (countSe === 0) {
    add();
    countSe++;
  } else {
    remove();
    countSe = 0;
  }
}
searchBt.addEventListener("click", onclick);



function imgSlider(event) {
  const temp = event.target.id;
  if (temp === thumb1.id) {
    starbuckAv.src = "https://i.ibb.co/2FjC2zg/img1.pngs";
    // circle.style.backgroundColor = "#017143";
    title_banner.style.background = "#fff url('https://i.ibb.co/HGdFkts/img2.png') repeat-x bottom left";
    title_h2.style.color = "black";
    title_p.style.color = "black";
  } else if (temp === thumb2.id) {
    starbuckAv.src = "images/img2.png";
    // circle.style.backgroundColor = "#eb7495";
    title_banner.style.background = "#fff url('https://i.ibb.co/LP8dSrR/title2.png') repeat-x bottom left";
    title_h2.style.color = "black";
    title_p.style.color = "black";
  } else if (temp === thumb3.id) {
    starbuckAv.src = "https://i.ibb.co/6XHKb1m/img3.png";
    title_banner.style.background = "#fff url('https://i.ibb.co/jGdks8G/title3.png') repeat-x bottom left";
    title_h2.style.color = "black";
    title_p.style.color = "black";
    // circle.style.backgroundColor = "#d752b1";
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





var swiper = new Swiper(mySwiper, {
  effect: "coverflow",
  grabCursor: true,
  centeredSlides: true,
  slidesPerView: "auto",
  coverflowEffect: {
    rotate: 60,
    stretch: 0,
    depth: 100,
    modifier: 1,
    slideShadows: true,
  },
  pagination: {
    el: ".swiper-pagination",
  },
});


window.onscroll = function () { scrollFunction() };

function scrollFunction() {
  if (document.body.scrollTop > 30 || document.documentElement.scrollTop > 30) {
    iconUp.style.display = "block";
    iconUp.style.color = "#00a05d"
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


//  audio

const component_bell = document.querySelector('.banner__decor');
const audio = new Audio("music/baner_decor.mp3")

const playM = async () => {
  console.log('hhhhhhh')
  await audio.play();
}
component_bell.addEventListener('mouseenter', playM);



$(document).ready(function () {
  $(".image-slider").slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    infinite: true,
    arrows: true,
    draggable: false,
    prevArrow: `<button type='button' class='slick-prev slick-arrow'><ion-icon name="arrow-back-outline"></ion-icon></button>`,
    nextArrow: `<button type='button' class='slick-next slick-arrow'><ion-icon name="arrow-forward-outline"></ion-icon></button>`,
    dots: true,
    responsive: [
      {
        breakpoint: 1025,
        settings: {
          slidesToShow: 2,
        },
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          arrows: false,
          infinite: false,
        },
      },
    ],
    autoplay: true,
    autoplaySpeed: 1200,
  });
});

