const openNav = document.querySelector(".open-btn");
const closeNav = document.querySelector(".close-btn");
const menu = document.querySelector(".nav-list");
const searchBt = document.querySelector(".searchBt");
const ipSearchBox = document.querySelector(".ipSearchBox");
const iconUp = document.querySelector(".iconUp");


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


$(document).ready(function () {
    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {

        var href = $(e.target).attr('href');
        var $curr = $(".checkout-bar  a[href='" + href + "']").parent();

        $('.checkout-bar li').removeClass();

        $curr.addClass("active");
        $curr.prevAll().addClass("visited");
    });
});

//AJAX read file json -> generate list province, district, ward
<<<<<<< HEAD
$(document).ready(function () {
    const xmlhttp = new XMLHttpRequest();
    const url = "https://provinces.open-api.vn/api/?depth=3";
    var myArrProvince;
    var myArrDistrict;
    var myArrWard;

    xmlhttp.onreadystatechange = function () {
        //4 DONE : thao tac hoan tat
        //200 OK, 403 Forbidden, 404 Page not found
        if (this.readyState == 4 && this.status == 200) {
            myArrProvince = JSON.parse(this.responseText);
            addOption(myArrProvince,'#province');
=======
$(document).ready(function (){
    const xmlhttp = new XMLHttpRequest();
    const url = "https://provinces.open-api.vn/api/?depth=3";

    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            const myArr = JSON.parse(this.responseText);
            myFunction(myArr);
>>>>>>> origin/main
        }
    };
    xmlhttp.open("GET", url, true);
    xmlhttp.send();

<<<<<<< HEAD
    function addOption(arr,id) {
        for (let i = 0; i < arr.length; i++) {
            let optionValue = arr[i].code;
            let optionText = arr[i].name;
            $(id).append(`<option value="${optionValue}"> 
                                               ${optionText}
                                   </option>`);

        }
    }

    $('#province').on('change',function (e){
        //delete all selected of select
        $("#province option").attr("selected", false);
        let optionSelected = $("option:selected", this);
        optionSelected.attr("selected",true);
    }).on('change',function (e){
        let optionSelected = $("option:selected", this);
        let valueSelected = optionSelected.val();
        for(let i = 0;i<myArrProvince.length;i++){
            let optionValue = myArrProvince[i].code;
            //use "==" is exactly, dont change plz
            if(optionValue==valueSelected){
                myArrDistrict = myArrProvince[i].districts;
                break;
            }
        }
        let listdistrict = myArrDistrict;
        $('#district').empty();
        for (let j = 0; j < listdistrict.length; j++) {
            let optionValue = listdistrict[j].code;
            let optionText = listdistrict[j].name;
            $('#district').append(`<option value="${optionValue}">
                                           ${optionText}
                               </option>`);
        }
    });

    $('#district').on('change',function (e) {
        $("#district option").attr("selected", false);
        let optionSelected = $("option:selected", this);
        optionSelected.attr("selected",true);
    }).on('change',function (e){
        let optionSelected = $("option:selected", this);
        let valueSelected = optionSelected.val();
        for(let i = 0;i<myArrDistrict.length;i++){
            let optionValue = myArrDistrict[i].code;
            if(optionValue==valueSelected){
                myArrWard = myArrDistrict[i].wards;
                break;
            }
        }

        let listwards = myArrWard;
        $('#ward').empty();
        for (let j = 0; j < listwards.length; j++) {
            let optionValue = listwards[j].code;
            let optionText = listwards[j].name;
            $('#ward').append(`<option value="${optionValue}">
                                           ${optionText}
                               </option>`);
        }
    });

=======
    function myFunction(arr) {
        let out = "";
        let i;
        for(i = 0; i < arr.length; i++) {
            out += '<a href="' + arr[i].url + '">' +
                arr[i].display + '</a><br>';
        }
        document.getElementById("id01").innerHTML = out;
    }
>>>>>>> origin/main
});
