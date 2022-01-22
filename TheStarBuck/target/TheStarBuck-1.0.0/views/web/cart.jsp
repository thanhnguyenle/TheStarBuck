<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.model.Account" %>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Account account = (Account) request.getAttribute("account");
%>
<jsp:useBean id="cart" scope="session" type="vn.edu.hcmuaf.fit.laptrinhweb.model.Cart"/>
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
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/navigation.css")%>" />
  <!--custom footer-->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/footer.css")%>" />
  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/cart.css")%>" />
  <!--modal-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
  <title>Cart</title>
</head>

<body>

  <!-- Navigation -->
  <jsp:include page="layout/header.jsp"/>

  <!-- Cart Items -->
  <div class="container cart">
    <table>
      <tr id="titlecart">
        <th>Product</th>
        <th>Quantity</th>
        <th>Subtotal</th>
      </tr>

        <c:set var="products" value="${cart.productList}" />
      <c:forEach items="${products}" var="product">
        <tr>
          <td>
            <div class="cart-info">
              <input type="checkbox"class="check_product">
              <img src="${product.image}" alt="" />
              <div>
                <p>${product.name}</p>
                <span>Price: $${product.price}</span>
                <br />
                <a href="/cart-remove">remove</a>
              </div>
            </div>
          </td>
          <td><input type="number" value="${product.quantitySold}" min="1"  max="${product.quantity}"/></td>
          <td>$${product.totalPrice}</td>
        </tr>
      </c:forEach>

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
            <td>$${cart.subTotalPrice}</td>
          </tr>
          <tr>
            <td>Tax</td>
            <td></td>
            <td>$50</td>
          </tr>
          <tr>
            <td>Total</td>
            <td></td>
            <td>$${cart.totalPrice}</td>
          </tr>
        </table>
        <a href="payment.jsp" class="checkout btn" >Proceed To Checkout</a>
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
  <jsp:include page="layout/footer.jsp"/>
  <!-- End Footer -->
  <!-- jquery -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- Custom Scripts -->
  <script src="<%= Asset.url("/template/web/js/cart.js")%>"></script>
    <!-- jQuery Modal -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
</body>

</html>