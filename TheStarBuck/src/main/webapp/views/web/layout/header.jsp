<%--
  Created by IntelliJ IDEA.
  User: DUONGMINHNHU
  Date: 11/12/2021
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav id="header" class="nav">
    <div class="wrapper container">
        <div class="logo"><a href="<c:url value='/views/web/index.jsp'/>">
            <img src="<c:url value='https://i.ibb.co/nMxcqW4/logo.png'/>" alt="">
        </a>
        </div>
        <ul class="nav-list">
            <div class="top">
                <label class="btn close-btn"><i class="fas fa-times"></i></label>
            </div>
            <li><a href="<c:url value='/views/web/index.jsp'/>">Home</a></li>
            <li><a href="<c:url value='http://localhost:8080/TheStarBuck/menu'/>">Menu</a></li>
            <li><a href="<c:url value='/views/web/poster.jsp'/>">Blog</a></li>


            <li>
                <a href="" class="desktop-item">Page <span><i class="fas fa-chevron-down"></i></span></a>
                <input type="checkbox" id="showdrop2" />
                <label for="showdrop2" class="mobile-item">Page <span><i class="fas fa-chevron-down"></i></span></label>
                <ul class="drop-menu2">
                    <li><a href="<c:url value='/views/web/aboutUs.jsp'/>">About Us</a></li>
                    <li><a href="<c:url value='/views/web/contact.jsp'/>">Contact</a></li>
                </ul>
            </li>

            <!-- icons -->
            <li class="icons">
                <a href="#">
                    <span class="searchBt">
                        <img src="<c:url value='/template/web/image/search.svg'/>" alt="">
                    </span>
                </a>
                <a href="<c:url value='/views/web/cart.jsp'/>" >
                    <span>
                    <img src="<c:url value='/template/web/image/shoppingBag.svg'/>" alt="" />
                    <small class="count d-flex">0</small>
                    </span>
                </a>
                <a href="<c:url value='/views/web/login.jsp'/>">
                    <span>
                    <img src="<c:url value='/template/web/image/user.svg'/>" alt="" />
                    </span>
                </a>
            </li>
        </ul>
        <label class="btn open-btn"><i class="fas fa-bars"></i></label>
    </div>
</nav>
<!-- serchBar -->
<section class="ipSearchBox"></section>
<!-- thumbnail -->