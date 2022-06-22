<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <jsp:include page="layout/css.jsp"/>
  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/post.css")%>" />
  <title>Blog</title>
</head>

<body>

<jsp:include page="layout/header.jsp"/>
  <!-- Page content-->
  <section class="post">
    <div class="post-layout">
      <div class="row wrapper">
        <div class="left">
          <div class="title-context">
            <h1>It's not drink, It's feeling</h1>
            <ul class="nav-title">
              <li><i class="fa fa-user" aria-hidden="true"></i><span> Minh Nhu</span></li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i><span> 01/09/2021</span></li>
              <li><i class="fa fa-comments" aria-hidden="true"></i><span> Minh Nhu</span></li>
            </ul>
            <div class="context">
              <p> There are many chains of coffee shops around the world, but Starbucks remains the most famous one. The
                company was founded in 1971 by three young men, Jerry Baldwin, Zev Siegl and Gordon Bowker. At the time
                they were all recently out of college and working at a Seattle coffee roastery called Starbucks. The
                name
                is taken from Herman Melville's first novel “Moby Dick”, where it symbolizes "a great white whale". </p>
              <div class="img_blog_shop">
                <img src="<%= Asset.url("/template/web/image/img_bolg_shop.jpg")%>" alt="" srcset="">
                <p>The first Starbuck</p>
              </div>
              <p>Starbucks is a popular coffee shop in the United States. It has many branches and is also popular
                worldwide. Starbucks serves a variety of hot and cold drinks, pastries, and food items. It has been
                around for over four decades! In 2009, Starbucks had overseas revenue of $4.8 billion from its 12,592
                locations in 37 countries outside the U.S., making it the largest coffeehouse company in the world. <br>
                With success, We want to grow it up online to serve our guess order the products easily. To make an
                important mark, we’re going to introduce some new products in speacial events like: Halloween, Chrismas,
                New Year, Lunar New Year,… <br>
                One of the new products is Halloween Feeling.
              </p>
              <div class="img_blog_shop">
                <img src="<%= Asset.url("/template/web/image/img_blog_pro1.jpg")%>" alt="" srcset="">
                <p>Halloween Feeling</p>
              </div>
              <p>This one is a great product. Because you can taste different of spices by mixing a little bit of sour,
                a little bit of spice and can’t be without sweet like “Trick or treat” game. In this Halloween,
                Halloween Feeling’ll be shown. Let’s waiting for it. <br>
                To celebrate for Chrismas, we can’t forget appearance of Strawberry Sweety X.
              </p>
              <div class="img_blog_shop">
                <img src="<%= Asset.url("/template/web/image/img_blog_pro2.jpg")%>" alt="" srcset="">
                <p>Strawberry Sweety X</p>
              </div>
              <p>You always think strawberry should be sour and sweet, but into this drink we’ll make it better and you
                guys can feel warmer when drink, even though Strawberry Sweety X belong to cool category. This X-mas,
                your sence is not alone anymore. <br>
                Not only introducing our new products, but also we’ll have a lot of gifts when ordering online and our
                coffee shop’ll discount lots of products. You and we getting the special things together.<br>
                Thank you for reading this blog. Have a nice day!

              </p>
            </div>

          </div>

        </div>
        <div class="right">
          <div class="input-group rounded">
            <input type="search" class="form-control rounded" placeholder="Search poster" aria-label="Search"
              aria-describedby="search-addon" />
            <span class="input-group-text border-0" id="search-addon">
              <i class="fas fa-search"></i>
            </span>
          </div>
          <div class="poster-near">
            <div class="title">
              <h4>Share</h4>
            </div>
            <ul class="poster-share">
              <li class="facebook"><a href="#"><i class="fab fa-facebook"></i><span>Facebook</span></a></li>
              <li class="twitter"><a href="#"><i class="fab fa-twitter"></i><span>Twitter</span></a></li>
              <li class="google"><a href="#"><i class="fab fa-google"></i><span>Google</span></a></li>
              <li class="instagram"><a href="#"><i class="fab fa-instagram-square"></i><span>Instagram</span></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Page content-->
<!-- Footer -->
<jsp:include page="layout/footer.jsp"/>
<!-- End Footer -->
<!-- jquery -->
<jsp:include page="layout/script.jsp"/>

  <!-- Custom Scripts -->
  <script src="<%= Asset.url("/template/web/js/product.js")%>"></script>
</body>

</html>