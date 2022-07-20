<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.model.Account" %>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.model.Cart" %>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Account account = (Account) request.getAttribute("account");
    Cart cart = (Cart) request.getAttribute("cart");
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="layout/css.jsp"/>
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="<%= Asset.url("/template/web/css/payment.css")%>" />
    <title>Bill</title>
    <link rel="stylesheet" href="<%= Asset.url("/template/web/css/listorder.css")%>" />

</head>

<body>

  <!-- Navigation -->
  <jsp:include page="layout/header.jsp"/>
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