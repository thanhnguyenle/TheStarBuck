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
  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="css/checkOut.css" />
   <!--custom navigation-->
   <link rel="stylesheet" href="css/navigation.css"/>
   <!--custom footer-->
   <link rel="stylesheet" href="css/footer.css"/>
  <title>Check Out</title>
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
        <li><a href="post.html">Blog</a></li>
        

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
        <li class="icons">
        <a  href="#">
          <span class="searchBt" ><img src="./images/search.svg" alt="" /></span>      
        </a>
        <a href="cart.jsp">
          <span>
          <img src="./images/shoppingBag.svg" alt="" />
          <small class="count d-flex">0</small>
        </span>
        </a>
        <a href="login.jsp">
            <span>
            <img src="./images/user.svg" alt="" />
          </span>
          </a>
        </li>
      </ul>
      <label for="" class="btn open-btn"><i class="fas fa-bars"></i></label>
    </div>
  </nav> 
  <!-- serchBar -->
<section class="ipSearchBox"></section>

<!-- Content -->
<section class="section" ></section>


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
            
          </div >
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
<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- ======== SwiperJS ======= -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.7.5/swiper-bundle.min.js"></script>
  <!-- Custom Scripts -->

  <script src="js/checkOut.js"></script>
</body>

</html>

