const starbucks = document.querySelector(".starbucks");
const thumb1 = document.querySelector("#thumb1");
const thumb2 = document.querySelector("#thumb2");
const thumb3 = document.querySelector("#thumb3");
const starbuckAv = document.querySelector("#starbuckAv");
const circle = document.querySelector(".circle");
const menuToggle = document.querySelector(".imgBox");
const navigation = document.querySelector(".navigation");

const mySwiper = document.querySelector(".mySwiper");
const title_banner = document.querySelector("#hero1");
const title_h2 = document.querySelector("#title_hero1");
const title_p = document.querySelector("#text_hero1");

function imgSlider(event) {
  const temp = event.target.id;
  if (temp === thumb1.id) {
    starbuckAv.src = "https://i.ibb.co/2FjC2zg/img1.png";
    title_banner.style.background = "#fff url('https://i.ibb.co/L0myK85/title1.png') repeat-x bottom left";
  } else if (temp === thumb2.id) {
    starbuckAv.src = "https://i.ibb.co/HGdFkts/img2.png>";
    title_banner.style.background = "#fff url('https://i.ibb.co/LP8dSrR/title2.png') repeat-x bottom left";
  } else if (temp === thumb3.id) {
    starbuckAv.src = "https://i.ibb.co/6XHKb1m/img3.png";
    title_banner.style.background = "#fff url('https://i.ibb.co/jGdks8G/title3.png') repeat-x bottom left";
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

//  audio

const component_bell = document.querySelector('.banner__decor');
const audio = new Audio("music/baner_decor.mp3")

const playM = async () => {
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
    prevArrow: `<button type='button' class='slick-prev slick-arrow'><i class="fa-solid fa-arrow-left"></i></button>`,
    nextArrow: `<button type='button' class='slick-next slick-arrow'><i class="fa-solid fa-arrow-right"></i></button>`,
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

$(document).ready( () => {

});

const  searchBar = () => {
  // alert('bchdsbjsd');
  $('#ipSearch').change(() => {
    // alert("jcdsndsnj");
    console.log($('#ipSearch').val());
    $.ajax({
      method: "POST",
      url: "searchAjax?product_search="+$('#ipSearch').val(),
      // data: { name: "John", location: "Boston" }
      success: function (data) {
        $('.search_container').append(JSON.parse(data));
        console.log(JSON.parse(data))
      }
    })
        // .done(function( msg ) {
        //   alert( "Data Saved: " + msg );
        // });
  });
}
