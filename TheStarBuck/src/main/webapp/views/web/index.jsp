<jsp:useBean id="slideTitle" scope="request" type="java.util.List"/>
<jsp:useBean id="slideThumbBig" scope="request" type="java.util.List"/>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.model.Account" %>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Account account = (Account) request.getAttribute("account");
  %>
<!DOCTYPE html>
<html lang="en">

<head>
  <jsp:include page="layout/css.jsp"/>
<%--  <meta charset="UTF-8" />--%>
<%--  <meta name="viewport" content="width=device-width, initial-scale=1.0" />--%>
<%-- <!-- Favicon -->--%>
<%-- <link rel="shortcut icon" href="https://i.ibb.co/nMxcqW4/logo.png" type="image/png" />--%>
<%-- <!-- Font Awesome -->--%>
<%-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />--%>
<%-- <!-- Boxicons -->--%>
<%-- <link href='https://unpkg.com/boxicons@2.0.8/css/boxicons.min.css' rel='stylesheet'>--%>
<%-- <!-- Custom StyleSheet -->--%>
<%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"--%>
<%--   integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--%>
<!-- <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> -->
 <!-- animated -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
 <!-- CSS -->
 <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
<%--  <!-- slier-image -->--%>
<%--  <link rel="preconnect" href="https://fonts.gstatic.com" />--%>
<%--  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet" />--%>


  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <!-- slier-image -->
  <!--custom footer-->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/home.css")%>" />
  <title>Home</title>
</head>

<body>
 <jsp:include page="layout/header.jsp"/>
  <div class="hero" id="hero1" style="background: url('${slideTitle[1].image}')">
    <div class="row hero-layout">
      <!-- <div class="circle "></div> -->
      <div class="content">
        <div class="textBox">
          <h2 class="animate__animated animate__fadeInTopLeft" id="title_hero1">${slideTitle[1].greetingH2}<br>It's <span>${slideTitle[1].greetingSpan}</span></h2>
          <p class="animate__animated animate__backInLeft" id="text_hero1">${slideTitle[1].greetingP}</p>
          <a class="animate__animated animate__backInLeft" href="#products">Order Now</a>
        </div>
        <div class="imgBox animate__animated animate__backInRight">
          <img id="starbuckAv" src="${slideThumbBig[1].image}" class="starbucks" />
        </div>
      </div>
      <ul class="thumb ">
          <c:set var="count" value="0" scope="page" />
          <jsp:useBean id="slideThumb" scope="request" type="java.util.List"/>
          <c:forEach items="${slideThumb}" var="item">
              <c:set var="count" value="${count + 1}" scope="page"/>
        <li><img id="thumb${count}" src="${item.image}" class="animate__animated animate__backInUp animate__delay-${count}s"></li>
<%--        <li><img id="thumb2" src="https://i.ibb.co/25ZcP5F/thumb2.png" class="animate__animated animate__backInUp animate__delay-2s"></li>--%>
<%--        <li><img id="thumb3" src="https://i.ibb.co/cQb0DNS/thumb3.png" class="animate__animated animate__backInUp animate__delay-3s"></li>--%>
          </c:forEach>
      </ul>
    </div>
  </div>
  <section class="image-slider">
    <jsp:useBean id="slideMini" scope="request" type="java.util.List"/>
    <c:forEach items="${slideMini}" var="x">
      <div class="image-item">
        <div class="image">
          <img src="${x.image}" alt="" />
        </div>
      </div>
    </c:forEach>
  </section>
  <!-- Products -->
  <section class="section products " id="products">
    <div class="section-title">
      <h2>Product popularity</h2>
    </div>
    <div class="container">
      <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" id="featured_tab" data-toggle="tab" href="#featured" role="tab"
            aria-controls="featured" aria-selected="true">Featured</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="latest-tab" data-toggle="tab" href="#latest" role="tab" aria-controls="latest"
            aria-selected="false">Latest</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="bestsellers-tab" data-toggle="tab" href="#bestsellers" role="tab"
            aria-controls="bestsellers" aria-selected="false">Bestsellers</a>
        </li>
      </ul>
      <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="featured" role="tabpanel" aria-labelledby="featured_tab">
          <div class=" product-layout">
            <jsp:useBean id="listProductFeatured" scope="request" type="java.util.List"/>
            <c:forEach items="${listProductFeatured}" var="x">
          <div class="product" >
            <div class="img-container">
              <img src="${x.image}" alt="" />
              <div class="addCart">
                <a href="<%=request.getContextPath()%>/add-cart?id=${x.id}">
                  <i class="fas fa-shopping-cart"></i>
                </a>
              </div>
              <div class="sale-text">
                <span class="section-sale">${x.sale}% Off</span>
              </div>

              <ul class="side-icons">
                <span><i class="fas fa-search"></i></span>
                <span><i class="far fa-heart"></i></span>
                <span><i class="fas fa-sliders-h"></i></span>
              </ul>
            </div>
            <div class="bottom">
              <div class="price-rating">
                <div class="rating">
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                </div>
              </div>
              <a href="<%=request.getContextPath()%>/detailProduct?id=${x.id}">${x.name}</a>
              <div class="price">
                <span>$${x.price - x.discount}</span>
                <span class="cancel">$${x.price}</span>
              </div>
            </div>
          </div>
            </c:forEach>
         </div>
        <div class="btn-box">
          <a href="">
            View More
          </a>
        </div>

      </div>
      <div class="tab-pane fade" id="latest" role="tabpanel" aria-labelledby="latest-tab">
        <div class="product-layout">
          <jsp:useBean id="listProductLasest" scope="request" type="java.util.List"/>
          <c:forEach items="${listProductLasest}" var="x">
          <div class="product">
            <div class="img-container">
              <img src="${x.image}" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">${x.sale}% Off</span>
              </div>

              <ul class="side-icons">
                <span><i class="fas fa-search"></i></span>
                <span><i class="far fa-heart"></i></span>
                <span><i class="fas fa-sliders-h"></i></span>
              </ul>
            </div>
            <div class="bottom">
              <div class="price-rating">
                <div class="rating">
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                </div>
              </div>
              <a href="">${x.name}</a>
              <div class="price">
                <span>$${x.price - x.discount}</span>
                <span class="cancel">$${x.price}</span>
              </div>
            </div>
          </div>
          </c:forEach>
        </div>
        <div class="btn-box">
          <a href="">
            View More
          </a>
        </div>
      </div>
      <div class="tab-pane fade" id="bestsellers" role="tabpanel" aria-labelledby="bestsellers-tab">

        <div class="product-layout">
          <jsp:useBean id="listProductHot" scope="request" type="java.util.List"/>
          <c:forEach items="${listProductHot}" var="x">
            <div class="product">
              <div class="img-container">
                <img src="${x.image}" alt="" />
                <div class="addCart">
                  <i class="fas fa-shopping-cart"></i>
                </div>
                <div class="sale-text">
                  <span class="section-sale">${x.sale}% Off</span>
                </div>

                <ul class="side-icons">
                  <span><i class="fas fa-search"></i></span>
                  <span><i class="far fa-heart"></i></span>
                  <span><i class="fas fa-sliders-h"></i></span>
                </ul>
              </div>
              <div class="bottom">
                <div class="price-rating">
                  <div class="rating">
                    <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                    <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                    <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                    <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                    <span class="fa fa-stack"><i class="fa fa-star-o"></i><i class="fa fa-star"></i></span>
                  </div>
                </div>
                <a href="">${x.name}</a>
                <div class="price">
                  <span>$${x.price - x.discount}</span>
                  <span class="cancel">$${x.price}</span>
                </div>
              </div>
            </div>
          </c:forEach>
        </div>
        <div class="btn-box">
          <a href="">
            View More
          </a>
        </div>

      </div>
    </div>

    </div>
    <!-- /.container -->
  </section>
  <!-- Banner Begin -->
  <section class="banner">
    <jsp:useBean id="slideBanner" scope="request" type="java.util.List"/>
    <c:forEach items="${slideBanner}" var="x">
    <div class="container">
      <div class="col">
        <img class="banner__decor" src="<%= Asset.url("/template/web/image/bell__xmas.png")%>" alt="" srcset="">
        <div class="banner_box">
          <div class="banner_content ">
            <h2>${x.greetingH2}</h2>
            <p>${x.greetingP}</p>
            <a>Find your favorite</a>
          </div>
          <div class="banner__pic">
            <img src="${x.image}" alt="">
          </div>
        </div>
      </div>
    </div>
    </c:forEach>
  </section>
  <!-- Banner End -->
  <!-- about -->
  <section class="section about">
    <div class="about-layout container">
      <div class="wrapper">
        <div class="one item">
          <img src="<%= Asset.url("/template/web/image/about1.png")%>" alt="">
          <img src="<%= Asset.url("/template/web/image/about1_1.png")%>" alt="" class="img-change">
        </div>
        <div class="two item">
          <img src="<%= Asset.url("/template/web/image/about2.png")%>" alt="">
          <img src="<%= Asset.url("/template/web/image/about2_2.png")%>" alt="" class="img-change">
        </div>
        <div class="three item">
          <img src="<%= Asset.url("/template/web/image/about3.png")%>" alt="">
          <img src="<%= Asset.url("/template/web/image/about3_3.png")%>" alt="" class="img-change">
        </div>
        <div class="four item">
          <img src="<%= Asset.url("/template/web/image/about4.png")%>" alt="">
          <img src="<%= Asset.url("/template/web/image/about4_4.png")%>" alt="" class="img-change">
        </div>
        <div class="five">
          <div class="content">
            <h3>Starbucks</h3>
            <h1>About us</h1>
            <p>Besides being proud of delicious - clean - fresh milk tea cups, we are always confident to bring
              customers the best experience in terms of service and space.</p>
          </div>
          <div class="btn-box">
            <a href="">
              View More
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Blog Section Begin -->
  <section class="from-blog spad">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-title from-blog__title">
            <h2>From The Blog</h2>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6">
          <div class="blog__item">
            <div class="blog__item__pic">
              <img src="" alt="">
            </div>
            <div class="blog__item__text">
              <ul>
                <li><i class="far fa-calendar"></i> May 4,2019</li>
                <li><i class="far fa-comment"></i> 5</li>
              </ul>
              <h5><a href="#">Cooking tips make cooking simple</a></h5>
              <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
            </div>
          </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6">
          <div class="blog__item">
            <div class="blog__item__pic">
              <img src="images/blog_2_title.jpg" alt="">
            </div>
            <div class="blog__item__text">
              <ul>
                <li><i class="far fa-calendar"></i> May 4,2019</li>
                <li><i class="far fa-comment"></i> 5</li>
              </ul>
              <h5><a href="#">6 ways to prepare breakfast for 30</a></h5>
              <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Blog Section End -->
  <!-- ordering -->
  <section class="ordering steps">
    <div class="ordering-layout">
      <h2>Step by step</h2>
      <div class="ordering-stepss">
        <div class="item steps-one">
          <div class="criea">
            <img src="<%= Asset.url("/template/web/image/step_1.png")%>" alt="" width="40px" height="40px">
          </div>
          <h4>Contact</h4>
        </div>
        <div class="item min">
          <img src="<%= Asset.url("/template/web/image/step.png")%>" alt="" width="40px" height="40px">
        </div>
        <div class="item steps-two">
          <div class="criea">
            <img src="<%= Asset.url("/template/web/image/step_2.png")%>" alt="" width="40px" height="40px">
          </div>
          <h4>Create order</h4>
        </div>
        <div class="item min">
          <img src="<%= Asset.url("/template/web/image/step.png")%>" alt="" width="40px" height="40px">
        </div>
        <div class="item steps-three">
          <div class="criea">
            <img src="<%= Asset.url("/template/web/image/step_3.png")%>" alt="" width="40px" height="40px">
          </div>
          <h4>Delivery</h4>
        </div>
        <div class="item min">
          <img src="<%= Asset.url("/template/web/image/step.png")%>" alt="" width="40px" height="40px">
        </div>
        <div class="item steps-four">
          <div class="criea">
            <img src="<%= Asset.url("/template/web/image/step_4.png")%>" alt="" width="40px" height="40px">
          </div>
          <h4>Pay</h4>
        </div>
      </div>
    </div>
  </section>
  <!-- Footer -->
 <jsp:include page="layout/footer.jsp"/>
  <!-- End Footer -->
  <!-- jquery -->
 <jsp:include page="layout/script.jsp"/>
<%--Thư viện UI--%>
<%-- <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>--%>
<%-- <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>--%>
    <!-- Custom Scripts -->
<%-- 1 Thư viện để làm slider cho web khá hay và đơn giản--%>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

  <!-- JavaScript -->
<%-- Flickity là thư viện Javascript cho phép bạn tạo slideshow một cách hết sức đơn giản, hỗ trợ responsive và tuỳ biến rất mạnh mẽ.--%>
  <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
<%-- Owl Carousel là một plugin giúp xây dựng các slide show được sử dụng hàng đầu trong website bởi tính đa năng, tiện lợi của nó.--%>
<%--  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>--%>

  <!-- slier-image -->
<%--  <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>--%>
<%-- jQuery migrate là các tập tin JavaScript để hỗ trợ cho những theme (giao diện) sử dụng các phiên bản cũ hơn của jQuery.--%>
<%-- Việc sử dụng nó trong trang web sẽ gây làm chậm load trang--%>
<%--  <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-3.4.0.min.js"></script>--%>
<%-- Slick.js là một plugin jQuery nổi tiếng được tạo ra bởi Ken Wheeler cho phép bạn tạo ra những responsive carousel tuyệt đẹp--%>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  
  <!-- jQuery Modal -->
<%--  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>--%>
  <script type="text/javascript" src="<%= Asset.url("/template/web/js/index.js")%>"></script>
<%-- <script src="<%= Asset.url("/template/web/js/profileAccount.js")%>"></script>--%>
<script  type="text/javascript">
  const starbuckAv = document.querySelector("#starbuckAv");
  const title_banner = document.querySelector("#hero1");
  function actionThumb(){
    <c:set var="count3" value="0" scope="page" />
    <c:forEach items="${slideTitle}" var="item">
    <c:set var="count3" value="${count3 + 1}" scope="page"/>
      $("#thumb${count3}").click(function () {
        title_banner.style.background = "#fff url('${item.image}') repeat-x bottom left";
        starbuckAv.src = "${slideThumbBig[count3-1].image}";
      });
    </c:forEach>
  }
  actionThumb();
</script>
</body>
</html>