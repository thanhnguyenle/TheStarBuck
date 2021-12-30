const openNav = document.querySelector(".open-btn");
const closeNav = document.querySelector(".close-btn");
const menu = document.querySelector(".nav-list");
const searchBt = document.querySelector(".searchBt");
const ipSearchBox = document.querySelector(".ipSearchBox");
const iconUp = document.querySelector(".iconUp");

openNav.addEventListener("click", () => {
  menu.classList.add("show");
});

closeNav.addEventListener("click", () => {
  menu.classList.remove("show");
});

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
  } else {
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

window.onscroll = function () {
  scrollFunction()
};

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

//select menu

$(document).ready(function (e) {
    //select title list
    $(".prod-cat li").click(function (e) {
      //fix all 
      $(this).siblings('li').find('a').removeClass('active');
      ////change angle
      $(this).siblings('li').find('a').children('i').removeClass('fa-angle-right fa-angle-down');
      $(this).siblings('li').find('a').children('i').toggleClass('fa-angle-right');
      $(this).siblings('li').children('ul').slideUp(500);
      //fix specified
      $(this).children('a').toggleClass('active');
      $(this).children('ul').slideToggle(500);
      ////change angle
      $(this).children('a').children('i').toggleClass('fa-angle-right').toggleClass('fa-angle-down');
    });
//select list-item
  $(".prod-cat ul li").click(function (e) {
    e.stopPropagation();
    $(this).siblings('li').removeClass('active');
    $(this).addClass('active');
  });
  
});

//jquery price range
$(document).ready(function () {
  $("#slider-3").slider({
    range: true,
    min: 0,
    max: 500,
    values: [35, 200],
    slide: function (event, ui) {
      $("#from").val(ui.values[0]);
      $("#to").val(ui.values[1]);
    }
  });
  $("#from").val( $("#slider-3").slider("values", 0));
  $("#to").val( $("#slider-3").slider("values", 1));
  //
  $("input[name=from]").blur(function(){
    $( "#slider-3" ).slider('values',0,$('input[name=from]').val())
  });
  $("input[name=to]").blur(function(){
    $( "#slider-3" ).slider('values',1,$('input[name=to]').val())
  });
});

//Filter
$(document).ready(function(){
  $(".panel-body .form-group select").click(function(){
    var valueSelect = $(this).find("option:selected").text();
      $(this).siblings(".customSelect").text(valueSelect);
  });
});

// Open modal in AJAX callback
var onetime = false;
$(document).ready(function(){
$('#manual-ajax').click(function(event) {
  event.preventDefault();
  this.blur(); // Manually remove focus from clicked link.
  if(!onetime){
  $.get(this.href, function(html) {
    $(html).appendTo('body').modal();
  });
  onetime = true;
}
});
// Get the button that opens the modal
var btn = document.getElementById('manual-ajax');

// // When the user clicks the button, open the modal 
btn.onclick = function() {
  document.querySelectorAll(".modal").forEach(a=>a.style.display = "block");
}

});