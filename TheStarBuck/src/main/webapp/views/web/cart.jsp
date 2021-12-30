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
  <!--custom navigation-->
  <link rel="stylesheet" href="css/navigation.css" />
  <!--custom footer-->
  <link rel="stylesheet" href="css/footer.css" />
  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="css/cart.css" />
  <!--modal-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
  <title>Cart</title>
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
  
  <!-- searchBar -->
  <section class="ipSearchBox"></section>

  <!-- Cart Items -->
  <div class="container cart">
    <table>
      <tr id="titlecart">
        <th>Product</th>
        <th>Quantity</th>
        <th>Subtotal</th>
      </tr>
      <tr>
        <td>
          <div class="cart-info">
            <input type="checkbox"class="check_product">
            <img src="./images/product_1.png" alt="" />
            <div>
              <p>Bambi Print Mini Backpack</p>
              <span>Price: $500.00</span>
              <br />
              <a href="#">remove</a>
            </div>
          </div>
        </td>
        <td><input type="number" value="1" min="1" /></td>
        <td>$50.00</td>
      </tr>
      <tr>
        <td>
          <div class="cart-info">
            <input type="checkbox"class="check_product">
            <img src="./images/product_2.png" alt="" />
            <div>
              <p>Bambi Print Mini Backpack</p>
              <span>Price: $900.00</span>
              <br />
              <a href="#">remove</a>
            </div>
          </div>
        </td>
        <td><input type="number" value="1" min="1" /></td>
        <td>$90.00</td>
      </tr>
      <tr>
        <td>
          <div class="cart-info">
            <input type="checkbox"class="check_product">
            <img src="./images/product_3.png" alt="" />
            <div>
              <p>Bambi Print Mini Backpack</p>
              <span>Price: $700.00</span>
              <br />
              <a href="#">remove</a>
            </div>
          </div>
        </td>
        <td><input type="number" value="1" min="1" /></td>
        <td>$60.00</td>
      </tr>
      <tr>
        <td>
          <div class="cart-info">
            <input type="checkbox"class="check_product">
            <img src="./images/product_4.webp" alt="" />
            <div>
              <p>Bambi Print Mini Backpack</p>
              <span>Price: $600.00</span>
              <br />
              <a href="#">remove</a>
            </div>
          </div>
        </td>
        <td><input type="number" value="1" min="1" /></td>
        <td>$60.00</td>
      </tr>
      <tr>
        <td>
          <div class="cart-info">
            <input type="checkbox"class="check_product">
            <img src="./images/product_9.webp" alt="" />
            <div>
              <p>Bambi Print Mini Backpack</p>
              <span>Price: $600.00</span>
              <br />
              <a href="#">remove</a>
            </div>
          </div>
        </td>
        <td><input type="number" value="1" min="1" /></td>
        <td>$60.00</td>
      </tr>
    </table>

    <!-- <div class="row min"> -->
      <div class="total-price">
        <table>
          <tr>
            <td>Code</td>
            <td><input type="text" width="100%"></td>
            <td><button id="enterCode">Enter</button></td>
          </tr>
          <tr>
            <td>Subtotal</td>
            <td></td>
            <td>$200</td>
          </tr>
          <tr>
            <td>Tax</td>
            <td></td>
            <td>$50</td>
          </tr>
          <tr>
            <td>Total</td>
            <td></td>
            <td>$250</td>
          </tr>
        </table>
        <a href="payment.jsp" class="checkout btn">Proceed To Checkout</a>
      </div>
    <!-- </div> -->
  
  </div>
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
  <!-- Custom Scripts -->
  <script src="./js/cart.js"></script>
    <!-- jQuery Modal -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
</body>

</html>