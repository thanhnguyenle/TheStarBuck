<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <!--custom navigation-->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/navigation.css")%>" />
  <!--custom footer-->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/footer.css")%>" />
  <!-- animated -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/aboutUs.css")%>" />
  <!--modal-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
  <!-- Custom StyleSheet -->
  <title>About Us</title>
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
  <!-- serchBar -->
  <section class="ipSearchBox"></section>


  <!-- Content -->
  <section class="aboutUs">
    <div class="title">
      <h1 class="animate__animated animate__bounceInDown">Who we are</h1>
    </div>
    <div class="elementor-divider">
      <span class="elementor-divider-separator animate__animated animate__bounceInDown"></span>
    </div>
    <div class="introBox">
      <div class="imIntro">
        <img src="images/aboutUs_intro_title.png" class="animate__animated animate__bounceInLeft" alt="" srcset="">
      </div>
      <div class="introText animate__animated animate__bounceInRight">
        <h3>A few words about us</h3>
        <p>The Starbuck is a commercial website. We have done this by understanding your needs and providing you with a
          professional website to grow our coffee shop. Our team is made up of creative minds who are
          always looking for ways to give you guys the best possible website. We are enthusiastic in our woking and
          values
          of bringing you a special flavors and making your feeling better.
          Here is a page which we want to show something about us. After reading, can you tell me everything of your
          love! Thank you for your contribution!
          Loves!</p>
      </div>
    </div>
    <div class="breakbreak">
      <img src="images/brbr.webp" alt="" srcset="">
    </div>
    <div class="introProduct">
      <div class="title">
        <h2>OUR FUN FACTS</h2>
      </div>
      <div class="grid-container">
        <div class="item1 item_flex">
          <div class="item_icon">
            <img src="images/about_icon_1.png" alt="">
          </div>
          <div class="item_content">
            <p>123</p>
            <h4>Clients</h4>
          </div>
        </div>
        <div class="item1 item_flex">
          <div class="item_icon">
            <img src="images/about_icon_2.png" alt="">
          </div>
          <div class="item_content">
            <p>150</p>
            <h4>Products</h4>
          </div>
        </div>
        <div class="item1 item_flex">
          <div class="item_icon">
            <img src="images/about_icon_3.png" alt="">
          </div>
          <div class="item_content">
            <p>100</p>
            <h4>Hours</h4>
          </div>
        </div>
      </div>
    </div>
    <div class="breakbreak">
      <img src="images/brbr.webp" alt="" srcset="">
    </div>
    <div class="title">
      <h2>Meet our team</h2>
    </div>
    <div class="aboutUs-layout">
      <div class="item">
        <div class="avt_profile">
          <img src="images/KyAnh.png" alt="" width="300" height="300">
          <h1 class="titleName" id="clickKA">KA</h1>
        </div>
        <div class="context_profile">
          <div class="detailPersonInfor clickKA">
            <ul>
              <li>Full Name: <span class="fullName">Nguyen Ky Anh</span></li>
              <li>Student Id: <span class="idStu">19130011</span></li>
              <li>Class: <span class="class">DH19DTB</span></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="item">
        <div class="avt_profile">
          <img src="images/Thanh.png" alt="" width="300" height="300">
          <h1 class="titleName" id="clickThanh">Thanh</h1>
        </div>
        <div class="context_profile">
          <div class="detailPersonInfor clickThanh">
            <ul>
              <li>Full Name: <span class="fullName">Nguyen Le Thanh</span></li>
              <li>Student Id: <span class="idStu">19130206</span></li>
              <li>Class: <span class="class">DH19DTA</span></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="item">
        <div class="avt_profile">
          <img src="images/Nhu.png" alt="" width="300" height="300">
          <h1 class="titleName" id="clickNhu">Nhu</h1>
        </div>
        <div class="context_profile">
          <div class="detailPersonInfor clickNhu">
            <ul>
              <li>Full Name: <span class="fullName">Duong Thi Minh Nhu</span></li>
              <li>Student Id: <span class="idStu">19130163</span></li>
              <li>Class: <span class="class">DH19DTA</span></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="about_poster">
      <img src="images/about_poster_1.png" alt="" srcset="">
    </div>
  </section>



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
  <script src="<%= Asset.url("/template/web/js/aboutUs.js")%>"></script>
    <!-- jQuery Modal -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
</body>

</html>