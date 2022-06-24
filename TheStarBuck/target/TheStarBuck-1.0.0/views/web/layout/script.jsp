<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%--
  Created by IntelliJ IDEA.
  User: NLTHANH
  Date: 6/6/2022
  Time: 9:26 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--JQUERY LIB--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%--Navigation script--%>
<script>
    let openNav = document.querySelector(".open-btn");
    let closeNav = document.querySelector(".close-btn");
    let menu = document.querySelector(".nav-list");
    let searchBt = document.querySelector(".searchBt");
    let ipSearchBox = document.querySelector(".ipSearchBox");
    let iconUp = document.querySelector(".iconUp");

    let flag = 0;
    if (typeof(closeNav) != 'undefined' && closeNav != null
        &&typeof(menu) != 'undefined' && menu != null
        &&typeof(openNav) != 'undefined' && openNav != null)
    {
        closeNav.addEventListener("click", () => {
            menu.classList.remove("show");
        });

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
    }
    // shadow when scrolling use jquery
    $(window).scroll(function () {
        var scroll = $(window).scrollTop();
        if (scroll > 0) {
            $("#header").addClass("active");
        } else {
            $("#header").removeClass("active");
        }
    });

    if (typeof(searchBt) != 'undefined' && searchBt != null
        &&typeof(ipSearchBox) != 'undefined' && ipSearchBox != null) {

        //search
        let countSe = 0;

        function add() {
            ipSearchBox.innerHTML = "<input type='text' id='ipSearch' placeholder='Eg: capuchino' />";
            $(document).ready(function() {
                $("#ipSearch").keyup(function () {
                    // alert("jcdsndsnj");
                    console.log($('#ipSearch').val());
                    $.ajax({
                        method: "POST",
                        url: "searchAjax?product_search=" + $('#ipSearch').val(),
                        // data: { name: "John", location: "Boston" }
                        success: function (data) {
                            $(ipSearchBox).appendChild(document.createElement('div'));
                            $(ipSearchBox > 'div').addClass('search_container');
                            $('.search_container').append(JSON.parse(data));
                            console.log(JSON.parse(data))
                        }
                    })
                    // .done(function( msg ) {
                    //   alert( "Data Saved: " + msg );
                    // });
                });
            });
        }

        function remove() {
            ipSearchBox.innerHTML = "";
        }

        function clickRun() {
            ipSearchBox.classList.toggle("section")
            if (countSe === 0) {
                add();
                countSe++;
            } else {
                remove();
                countSe = 0;
            }
        }
        searchBt.addEventListener("click",function (e){
            clickRun();
            console.log(ipSearchBox);
        });
    }

    if (typeof(iconUp) != 'undefined' && iconUp != null) {
        window.onscroll = function () {
            scrollFunction();
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
    }
</script>

<%--Slim là bản jquery nhưng không có thư viện AJAX--%>
<%--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"--%>
<%--        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--Bootstrap bundle tích hợp cả popper và bootstrap.min.js trong nó--%>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"--%>
<%--        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--&lt;%&ndash;Thư viện tạo các tooltip với tuỳ biến cao&ndash;%&gt;--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"--%>
<%--        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"--%>
<%--        crossorigin="anonymous"></script>--%>

<%--<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>--%>
<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<!-- Custom Scripts -->
<%--<script src="<%= Asset.url("/template/web/js/profileAccount.js")%>"></script>--%>
<script>
    // Open modal in AJAX callback
    var onetime = false;
    $(document).ready(function () {
        $('#manual-ajax').click(function (event) {
            event.preventDefault();
            this.blur(); // Manually remove focus from clicked link.
            if (!onetime) {
                $.get("<c:url value='/views/web/profileAccount.jsp'/>", function (html) {
                    $(html).appendTo('body').modal();
                });
                onetime = true;
            }
        });
//Get the button that opens the modal
        var btn = document.getElementById('manual-ajax');

// When the user clicks the button, open the modal
        btn.onclick = function () {
            document.querySelectorAll(".modal").forEach(a => a.style.display = "block");
        }
    });
</script>