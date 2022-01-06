<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <!-- Favicon -->
 <link rel="shortcut icon" href="https://i.ibb.co/nMxcqW4/logo.png" type="image/png" />
 <!-- Font Awesome -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
 <!-- Boxicons -->
 <link href='https://unpkg.com/boxicons@2.0.8/css/boxicons.min.css' rel='stylesheet'>
 <!-- Custom StyleSheet -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
   integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> -->
 <!-- animated -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
 <!-- CSS -->
 <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
  <!-- slier-image -->
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet" />
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <!-- slier-image -->
  <!--custom navigation-->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/navigation.css")%>" />
  <!--modal-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
  <!--custom footer-->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/footer.css")%>" />
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/home.css")%>" />
  <title>Home</title>
</head>

<body>
 <jsp:include page="layout/header.jsp"/>
  <div class="hero" id="hero1" >
    <div class="row hero-layout">
      <!-- <div class="circle "></div> -->
      <div class="content">
        <div class="textBox">
          <h2 class="animate__animated animate__fadeInTopLeft" id="title_hero1">${slideTitle[0].greetingH2}<br>It's <span>${slideTitle[0].greetingSpan}</span></h2>
          <p class="animate__animated animate__backInLeft" id="text_hero1">${slideTitle[0].greetingP}</p>
          <a class="animate__animated animate__backInLeft" href="#products">Order Now</a>
        </div>
        <div class="imgBox animate__animated animate__backInRight">
          <img id="starbuckAv" src="https://i.ibb.co/2FjC2zg/img1.png" class="starbucks " />
        </div>
      </div>
      <ul class="thumb ">
        <li><img id="thumb1" src="https://i.ibb.co/j4YxX6j/thumb1.png" class="animate__animated animate__backInUp animate__delay-1s"></li>
        <li><img id="thumb2" src="https://i.ibb.co/25ZcP5F/thumb2.png" class="animate__animated animate__backInUp animate__delay-2s"></li>
        <li><img id="thumb3" src="https://i.ibb.co/cQb0DNS/thumb3.png" class="animate__animated animate__backInUp animate__delay-3s"></li>
      </ul>
    </div>
  </div>

  <section class="image-slider">
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

          <div class="product" >
            <div class="img-container">
              <img src="https://i.ibb.co/VSzbmtf/147.png" alt="" />
              <div class="addCart">
                <a href="productDetails.jsp">
                  <i class="fas fa-shopping-cart"></i>
                </a>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="productDetails.jsp">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>
            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/2.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>
            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/3.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/4.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/5.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/6.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/7.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/8.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>
        </div>
        <div class="btn-box">
          <a href="">
            View More
          </a>
        </div>

      </div>
      <div class="tab-pane fade" id="latest" role="tabpanel" aria-labelledby="latest-tab">

        <div class="product-layout">

          <div class="product">
            <div class="img-container">
              <img src="./images/products/9.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/10.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/11.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/12.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/13.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/14.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/15.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/16.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>
        </div>
        <div class="btn-box">
          <a href="">
            View More
          </a>
        </div>
      </div>
      <div class="tab-pane fade" id="bestsellers" role="tabpanel" aria-labelledby="bestsellers-tab">

        <div class="product-layout">

          <div class="product">
            <div class="img-container">
              <img src="./images/products/17.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/18.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/19.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/20.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/21.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/22.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/23.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>

          <div class="product">
            <div class="img-container">
              <img src="./images/products/24.png" alt="" />
              <div class="addCart">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <div class="sale-text">
                <span class="section-sale">20% Off</span>
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
              <a href="">Bambi Print Mini Backpack</a>
              <div class="price">
                <span>$150</span>
                <span class="cancel">$160</span>
              </div>

            </div>
          </div>
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
    <div class="container">
      <div class="col">
        <img class="banner__decor" src="images/bell__xmas.png" alt="" srcset="">
        <div class="banner_box">
          <div class="banner_content ">
            <h2>CELEBRATE TO X-MAS</h2>
            <p>Come celebrate the season with our merry holiday drinks: Peppermint Mocha, Caramel Brulée Latte and
              Toasted White Chocolate Mocha. Cheers!</p>
            <a>find your favorite</a>
          </div>
          <div class="banner__pic">
            <img src="images/banner__2.png" alt="">
          </div>
        </div>
      </div>
      <audio id="beep" preload="auto">
        <source id="src__music" src="music/baner_decor.mp3"></source>
      </audio>
    </div>
  </section>
  <!-- Banner End -->


  <!-- about -->
  <section class="section about">
    <div class="about-layout container">
      <div class="wrapper">
        <div class="one item">
          <img src="images/about1.png" alt="">
          <img src="images/about1_1.png" alt="" class="img-change">
        </div>
        <div class="two item">
          <img src="images/about2.png" alt="">
          <img src="images/about2_2.png" alt="" class="img-change">
        </div>
        <div class="three item">
          <img src="images/about3.png" alt="">
          <img src="images/about3_3.png" alt="" class="img-change">
        </div>
        <div class="four item">
          <img src="images/about4.png" alt="">
          <img src="images/about4_4.png" alt="" class="img-change">
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
              <img src="images/blog_1_title.png" alt="">
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
            <img src="images/step_1.png" alt="" width="40px" height="40px">
          </div>
          <h4>Contact</h4>
        </div>
        <div class="item min">
          <img src="images/step.png" alt="" width="40px" height="40px">
        </div>
        <div class="item steps-two">
          <div class="criea">
            <img src="images/step_2.png" alt="" width="40px" height="40px">
          </div>
          <h4>Create order</h4>
        </div>
        <div class="item min">
          <img src="images/step.png" alt="" width="40px" height="40px">
        </div>
        <div class="item steps-three">
          <div class="criea">
            <img src="images/step_3.png" alt="" width="40px" height="40px">
          </div>
          <h4>Delivery</h4>
        </div>
        <div class="item min">
          <img src="images/step.png" alt="" width="40px" height="40px">
        </div>
        <div class="item steps-four">
          <div class="criea">
            <img src="images/step_4.png" alt="" width="40px" height="40px">
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Custom Scripts -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <!-- JavaScript -->
  <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="	sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <!-- slier-image -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  
  <!-- jQuery Modal -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
  <script src="<%= Asset.url("/template/web/js/index.js")%>"></script>
</body>
</html>