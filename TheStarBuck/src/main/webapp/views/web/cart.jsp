<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.model.Account" %>
<%@ page import="com.google.gson.Gson" %>
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
  <link rel="shortcut icon" href="https://i.ibb.co/nMxcqW4/logo.png" type="image/png" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
  <!-- Boxicons -->
 <link href='https://unpkg.com/boxicons@2.0.8/css/boxicons.min.css' rel='stylesheet'>
  <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js' rel='stylesheet'>
 <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
 <link href='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js' rel='stylesheet'>
  <!--custom navigation-->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/navigation.css")%>" />
  <!--custom footer-->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/footer.css")%>" />
  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/cart.css")%>" />
    <!-- datatable -->
    <link rel="stylesheet" href="<%= Asset.url("/vendor/dt/datatables.min.css")%>" />
  <!--modal-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
  <title>Cart</title>
</head>

<body>

  <!-- Navigation -->
  <jsp:include page="layout/header.jsp"/>

  <!-- Cart Items -->
<%--  <div class="container cart">--%>
<%--    <table id="cart">--%>
<%--      <tr id="titlecart">--%>
<%--        <th>Product</th>--%>
<%--        <th>Quantity</th>--%>
<%--        <th>Subtotal</th>--%>
<%--      </tr>--%>

<%--        <c:set var="products" value="${cart.productList}" />--%>
<%--      <c:forEach items="${products}" var="product">--%>
<%--        <tr>--%>
<%--          <td class="product">--%>
<%--            <div class="cart-info">--%>
<%--              <input type="checkbox"class="check_product">--%>
<%--              <img src="${product.image}" alt="" />--%>
<%--              <div>--%>
<%--                <p>${product.name}</p>--%>
<%--                <span>Price: $${product.price}</span>--%>
<%--                <br />--%>
<%--                <a href="/cart-remove">remove</a>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </td>--%>
<%--          <td><input type="number" value="${product.quantitySold}" min="1"  max="${product.quantity}"/></td>--%>
<%--          <td>$${product.totalPrice}</td>--%>
<%--        </tr>--%>
<%--      </c:forEach>--%>

<%--    </table>--%>

<%--    <!-- <div class="row min"> -->--%>
<%--      <div class="total-price">--%>
<%--        <table>--%>
<%--          <tr>--%>
<%--            <td>Code</td>--%>
<%--            <td><input type="text" width="100%"></td>--%>
<%--            <td><button id="enterCode">Enter</button></td>--%>
<%--          </tr>--%>
<%--          <tr>--%>
<%--            <td>Subtotal</td>--%>
<%--            <td></td>--%>
<%--            <td class="sub-total-cart"></td>--%>
<%--          </tr>--%>
<%--          <tr>--%>
<%--            <td>Tax</td>--%>
<%--            <td></td>--%>
<%--            <td>$0.01</td>--%>
<%--          </tr>--%>
<%--          <tr>--%>
<%--            <td>Total</td>--%>
<%--            <td></td>--%>
<%--            <td class="total-cart"></td>--%>
<%--          </tr>--%>
<%--        </table>--%>
<%--        <a href="payment.jsp" class="checkout btn" >Proceed To Checkout</a>--%>
<%--      </div>--%>
<%--    <!-- </div> -->--%>
<%--  --%>
<%--  </div>--%>
  <section class="container" style="margin-top:110px; margin-bottom:80px">
      <div class="row">
          <aside class="col-lg-9">
              <div class="card">
                  <div class="table-responsive">
                      <table class="table table-borderless table-shopping-cart" id="cart">
                          <thead class="text-muted">
                          <tr class="small text-uppercase">
                              <th scope="col">Product</th>
                              <th scope="col" width="120">Quantity</th>
                              <th scope="col" width="20"></th>
                              <th scope="col" width="120">Price</th>
                              <th scope="col" class="text-right d-none d-md-block" width="120"></th>
                          </tr>
                          </thead>
                          <tbody>
                                  <c:set var="products" value="${cart.productList}" />
                                <c:forEach items="${products}" var="product">
                          <tr>
                              <td>
                                  <figure class="itemside align-items-center">
                                      <div class="aside"><img src="${product.image}" class="img-sm"></div>
                                      <figcaption class="info"> <a href="#" class="title text-dark" data-abc="true">${product.name}</a>
                                          <p class="text-muted small">SIZE: L</p>
                                      </figcaption>
                                  </figure>
                              </td>
                              <td>
                              <input type="number" value="${product.quantitySold}" min="1"  max="${product.quantity}"/>
                              </td>
                              <td>
                              </td>
                              <td>
                                  <div class="price-wrap align-items-center"> <var class="price">$${product.price}</var></div>
                              </td>

                              <td>
                                  <div class="text-right d-none d-md-block">
                                      <a data-original-title="Save to Wishlist" title="" href=""
                                         class="btn btn-light" data-toggle="tooltip" data-abc="true"> <i class="fa fa-heart"></i></a> <a
                                          href="" class="btn btn-light" data-abc="true"> Remove</a>
                                  </div>
                              </td>
                          </tr>
                                </c:forEach>
                          </tbody>
                      </table>
                  </div>
              </div>
          </aside>
          <aside class="col-lg-3">
              <div class="card mb-3">
                  <div class="card-body">
                      <form>
                          <div class="form-group"> <label>Have coupon?</label>
                              <div class="input-group"> <input type="text" class="form-control coupon" name=""
                                                               placeholder="Coupon code" style="border: 2px solid #017143; font-size:1.5rem"> <span class="input-group-append"> <button
                                      class="btn btn-primary btn-apply coupon">Apply</button> </span> </div>
                          </div>
                      </form>
                  </div>
              </div>
              <div class="card">
                  <div class="card-body">
                      <dl class="dlist-align">
                          <dt>Sub Total price:</dt>
                          <dd class="text-right ml-3 sub-total-cart"></dd>
                      </dl>
                      <dl class="dlist-align">
                          <dt>Tax:</dt>
                          <dd class="text-right text-danger ml-3">$0.01</dd>
                      </dl>
                      <dl class="dlist-align">
                          <dt>Total:</dt>
                          <dd class="text-right text-dark b ml-3"><strong class="total-cart"></strong></dd>
                      </dl>
                      <hr> <a href="#" class="btn btn-out btn-primary btn-square btn-main" data-abc="true"> Make Purchase </a> <a
                          href="#" class="btn btn-out btn-success btn-square btn-main mt-2" data-abc="true">Continue Shopping</a>
                  </div>
              </div>
          </aside>
      </div>
  </section>
  <!-- Footer -->
  <jsp:include page="layout/footer.jsp"/>
  <!-- End Footer -->
  <!-- jquery -->
<%--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
  <!-- Custom Scripts -->
  <script src="<%= Asset.url("/template/web/js/cart.js")%>"></script>
    <!-- jQuery Modal -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
  <!-- datatable -->
  <script src="<%= Asset.url("/vendor/dt/datatables.min.js")%>"></script>
<%--  <script src="/vendor/dt/datatables.min.js"></script>--%>
<script>
  // $(".sub-total-cart").html("123");
  var cart;
  $(document).ready( function () {
    <% String data = session.getAttribute("cart")==null?"{}":new Gson().toJson(session.getAttribute("cart")); %>
    cart = JSON.parse('<%=data%>');
      // loadCart(cart);
    $('#cart').DataTable({
      paging: false,
      searching: false,
    });
    loadCart(cart);
      console.log('abc');
    $('#cart').on('draw.dt', function (){

    });
  } );
  function loadCart(cart){
    var sub_sum = 0;
    var sum = 0;
    for (const x in cart.productList) {
      sub_sum += cart.productList[x].quantitySold * (cart.productList[x].price - (cart.productList[x].price * cart.productList[x].discount));

    }
    console.log(sum);
    sum = sub_sum + sub_sum * 0.01;
    $(".sub-total-cart").html("$" + sub_sum) ;
    $(".total-cart").html("$" + sum);
  }
</script>
</body>

</html>