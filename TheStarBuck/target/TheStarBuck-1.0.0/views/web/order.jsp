<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="layout/css.jsp"/>
<%--  <meta charset="UTF-8" />--%>
<%--  <meta name="viewport" content="width=device-width, initial-scale=1.0" />--%>
<%--  <!-- Favicon -->--%>
<%--  <link rel="shortcut icon" href="./images/logo.png" type="image/png" />--%>
<%--  <!-- Font Awesome -->--%>
<%--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />--%>
<%--  <!-- Boxicons -->--%>
<%--  <link href='https://unpkg.com/boxicons@2.0.8/css/boxicons.min.css' rel='stylesheet'>--%>
<%--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"--%>
<%--    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--%>
<%--  <!--custom navigation-->--%>
<%--  <!--custom footer-->--%>
<%--  <link rel="stylesheet" href="css/navigation.css" />--%>
<%--  <link rel="stylesheet" href="css/footer.css" />--%>
<%--  <!--modal-->--%>
<%--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />--%>
  <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="<%= Asset.url("/template/web/css/listorder.css")%>" />

    <title>Order</title>
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
 
<!-- Content -->
<section class="section order" >
    <div class="d-flex flex-column justify-content-center align-items-center" id="order-heading">
        <div class="text-uppercase">
            <p>Order</p>
        </div>
        <div class="h4">Thursday, July 24, 2017</div>
        <div class="pt-1">
            <p>Order #12615 is currently<b class="text-dark"> processing</b></p>
        </div>
    </div>
    <div class="orderdeteil">
        <div class="table-responsive">
            <table class="table table-borderless">
                <thead>
                    <tr class="text-uppercase text-muted">
                        <th scope="col">product</th>
                        <th scope="col" class="text-right">total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">Starbucks</th>
                        <td class="text-right"><b>$69.86</b></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="d-flex justify-content-start align-items-center list py-1">
            <div><b>1</b></div>
            <div class="mx-3"> <img src="https://i.ibb.co/r2mqvTg/3.png" alt="apple" class="rounded-circle" width="30" height="30"> </div>
            <div class="order-item">Starbucks</div>
        </div>
        <div class="d-flex justify-content-start align-items-center list py-1">
            <div><b>1</b></div>
            <div class="mx-3"> <img src="https://i.ibb.co/r2mqvTg/3.png" alt="apple" class="rounded-circle" width="30" height="30"> </div>
            <div class="order-item">Starbucks</div>
        </div>
        <div class="pt-2 border-bottom mb-3"></div>
        <div class="d-flex justify-content-start align-items-center pl-3">
            <div class="text-muted">Payment Method</div>
            <div class="ml-auto"> <img src="https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-logok-15.png" alt="" width="30" height="30"> <label>Mastercard ******5342</label> </div>
        </div>
        <div class="d-flex justify-content-start align-items-center py-1 pl-3">
            <div class="text-muted">Shipping</div>
            <div class="ml-auto"> <label>Free</label> </div>
        </div>
        <div class="d-flex justify-content-start align-items-center pb-4 pl-3 border-bottom">
            <div class="text-muted"> <button class="text-white btn">50% Discount</button> </div>
            <div class="ml-auto price"> -$34.94 </div>
        </div>
        <div class="d-flex justify-content-start align-items-center pl-3 py-3 mb-4 border-bottom">
            <div class="text-muted"> Today's Total </div>
            <div class="ml-auto h5"> $34.94 </div>
        </div>
        <div class="row border rounded p-1 my-3">
            <div class="col-md-12 py-3">
                <div class="d-flex flex-column align-items start"> <b>Shipping Address</b>
                    <p class="text-justify pt-2">James Thompson, 356 Jonathon Apt.220,</p>
                    <p class="text-justify">New York</p>
                </div>
            </div>
        </div>
        <div class="pl-3 font-weight-bold">Related Subsriptions</div>
        <div class="d-sm-flex justify-content-between rounded my-3 subscriptions">
            <div> <b>#9632</b> </div>
            <div>May 22, 2017</div>
            <div>Status: Processing</div>
            <div> Total: <b> $68.8 for 10 items</b> </div>
        </div>
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
  </footer>
  <!-- End Footer -->
  <!-- jquery -->
  <jsp:include page="layout/script.jsp"/>
  <!-- Custom Scripts -->
  <script src="<%= Asset.url("/template/web/js/product.js")%>"></script>

</body>

</html>