<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- Favicon -->
  <link rel="shortcut icon" href="./images/logo.png" type="image/png" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
  <!-- Boxicons -->
  <link href='https://unpkg.com/boxicons@2.0.8/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <!--custom navigation-->
  <link rel="stylesheet" href="css/navigation.css" />
  <!--custom footer-->
  <link rel="stylesheet" href="css/footer.css" />
  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="css/post.css" />
  <!--modal-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
  <title>Blog</title>
</head>

<body>

  <!-- Navigation -->
  <nav id="header" class="nav">
    <div class="wrapper container">
      <div class="logo"><a href="index.jsp">
          <img src="./images/logo.png" alt="">
        </a>
      </div>
      <ul class="nav-list">
        <div class="top">
          <label for="" class="btn close-btn"><i class="fas fa-times"></i></label>
        </div>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="products.jsp">Menu</a></li>
        <li><a href="poster.jsp">Blog</a></li>


        <li>
          <a href="" class="desktop-item">Page <span><i class="fas fa-chevron-down"></i></span></a>
          <input type="checkbox" id="showdrop2" />
          <label for="showdrop2" class="mobile-item">Page <span><i class="fas fa-chevron-down"></i></span></label>
          <ul class="drop-menu2">
            <li><a href="aboutUs.jsp">About Us</a></li>
            <li><a href="contact.jsp">Contact</a></li>
          </ul>
        </li>

        <!-- icons -->
        <!-- <li class="icons"> -->
          <li class="icons">
            <a href="#">
              <span class="searchBt"><img src="./images/search.svg" alt="" /></span>
            </a>
          </li>
          <li class="icons">
            <a href="cart.jsp">
              <span>
                <img src="./images/shoppingBag.svg" alt="" />
                <small class="count d-flex">5</small>
              </span>
            </a>
          </li>
          <li class="icons login">
            <a href="login.html" class="desktop-item" style="float: left;">
              <span>
                <img src="./images/user.svg" alt="" />
              </span>
            </a>
            <input type="checkbox" id="showdrop1" />
            <label for="showdrop1" class="mobile-item"><span><i class="fas fa-chevron-down"></i></span></label>
            <ul class="drop-menu1">
              <li><a href="profileAccount.jsp" id="manual-ajax">Profile</a></li>
              <li><a href="changePass.jsp">Change password</a></li>
              <li><a href="index.jsp">Logout</a></li>
            </ul>
            <!-- <a href="login.html"">
              <span>
                <img src="./images/user.svg" alt="" />
              </span>
             
              <ul class="drop-menu2">
                <li><a href="#">Profile</a></li>
                <li><a href="changePass.jsp">Change password</a></li>
                <li><a href="#">Logout</a></li>
              </ul>
            </a> -->
          </li>
          
        <!-- </li> -->
      </ul>
      <label for="" class="btn open-btn"><i class="fas fa-bars"></i></label>
    </div>
  </nav>
  <!-- Navigation -->
  <!-- serchBar -->
  <section class="ipSearchBox"></section>
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
                <img src="images/img_bolg_shop.jpg" alt="" srcset="">
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
                <img src="images/img_blog_pro1.jpg" alt="" srcset="">
                <p>Halloween Feeling</p>
              </div>
              <p>This one is a great product. Because you can taste different of spices by mixing a little bit of sour,
                a little bit of spice and can’t be without sweet like “Trick or treat” game. In this Halloween,
                Halloween Feeling’ll be shown. Let’s waiting for it. <br>
                To celebrate for Chrismas, we can’t forget appearance of Strawberry Sweety X.
              </p>
              <div class="img_blog_shop">
                <img src="images/img_blog_pro2.jpg" alt="" srcset="">
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
 
 


  <!-- messenger -->
  <div class="messenger">
    <a href=""><img src="images/mees.png" alt="" width="70px"></a>
  </div>
  <div class="up">
    <a href="#" class="iconUp"><i class="fa fa-arrow-circle-up"></i></a>
  </div>

  <!-- Footer -->
  <footer id="footer" class="section footer">
    <div class="container">
      <div class="footer-container">

        <div class="footer-center">
          <h3>INFORMATION</h3>
          <a href="#">About Us</a>
          <a href="#">Contact Us</a>
          <a href="#">Site Map</a>
        </div>

        <div class="footer-center">
          <h3>Social Media</h3>
          <div class="social_media">
            <span>
              <i class="fab fa-facebook"></i>
            </span>
            <a href="#">Facebook</a>


          </div>
          <div class="social_media">
            <span>
              <i class="fab fa-twitter"></i>
            </span>
            <a href="#">Twitter</a>

          </div>
          <div class="social_media">
            <span>
              <i class="fab fa-instagram"></i>
            </span>
            <a href="#">Instagram</a>

          </div>


        </div>
        <div class="footer-center">
          <h3>CONTACT US</h3>
          <div>
            <span>
              <i class="fas fa-map-marker-alt"></i>
            </span>
            42 Dream House, Dreammy street, 7131 Dreamville, USA
          </div>
          <div>
            <span>
              <i class="far fa-envelope"></i>
            </span>
            company@gmail.com
          </div>
          <div>
            <span>
              <i class="fas fa-phone"></i>
            </span>
            456-456-4512
          </div>
          <div class="payment-methods">
            <img src="./images/payment.png" alt="">
          </div>
        </div>
      </div>
    </div>
    </div>
  </footer>
  <!-- End Footer -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- Custom Scripts -->
  <script src="./js/product.js"></script>
    <!-- jQuery Modal -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
</body>

</html>