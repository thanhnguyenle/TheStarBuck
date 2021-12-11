<%--
  Created by IntelliJ IDEA.
  User: THANH_DEV
  Date: 12/7/2021
  Time: 10:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!--Bootstrap 4 CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <!--Icons-->
    <link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" rel="stylesheet">
    <!--custom navigation-->
    <!-- Favicon -->
    <link rel="shortcut icon" href="<c:url value='https://i.ibb.co/nMxcqW4/logo.png'/>" type="image/png" />
    <!--Custom CSS-->
    <link rel="stylesheet" href="<c:url value='/template/web/css/navigation.css'/>" />
    <!--custom footer-->
    <link rel="stylesheet" href="<c:url value='/template/web/css/footer.css'/>" />
    <link href="<c:url value='/template/web/css/payment.css'/>" rel="stylesheet">
    <title>Payment</title>
</head>

<body>

<!-- Navigation -->
<%@ include file="layout/header.jsp" %>
<!-- Navigation -->
<!-- serchBar -->
<section class="ipSearchBox"></section>

<header>
    <!--Check-out bar-->
    <div class="row mrCheckout">
        <div class="checkout-wrap col-xcol-md-6 col-sm-11 s-11 pull-right">
            <ul class="checkout-bar">
                <li class="visited checkout-title"><span>TOTAL BILL</span>
                </li>
                <li class="active checkout-title"><span>CHECKOUT</span>
                </li>
                <li class="checkout-title"><span>FINISH</span>
                </li>
            </ul>
        </div>
    </div>

    <!--End Check-out bar-->
</header>
<div class="wrapper">
    <div class="h5 large blockInfo">Billing Address</div>
    <div class="row">
        <div class="col-lg-6 col-md-8 col-sm-10 offset-lg-0 offset-md-2 offset-sm-1 blockInfo">
            <div class="mobile h5">Billing Address</div>
            <div id="details" class="bg-white rounded pb-5">
                <form>
                    <!--Name-->
                    <div class="form-group"> <label class="">Name</label>
                        <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input type="text"
                                                                                                        id="name" name="name" placeholder="Nguyen Van A" required> <span
                                class="fas fa-check text-success pr-sm-2 pr-0"></span> </div>
                    </div>
                    <!--phone number-->
                    <div class="form-group"> <label class="">Phone number</label>
                        <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input type="tel"
                                                                                                        id="phone" name="phone" placeholder="0123456789" required> <span
                                class="fas fa-check text-success pr-sm-2 pr-0"></span> </div>
                    </div>
                    <!--mail-->
                    <div class="form-group"> <label class="">Email</label>
                        <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input type="email"
                                                                                                        id="email" name="email" placeholder="david.343@gmail.com"> <span
                                class="fas fa-check text-success pr-sm-2 pr-0"></span> </div>
                    </div>

                    <div class="row">
                       <!--Country-->
                         <div class="col-lg-6">
                            <div class="form-group">
                                <label>Country</label>
                                <select class="d-flex jusify-content-start align-items-center rounded p-2"
                                        name="country" id="country">
                                    <option value="Vietnam">Vietnam</option>
                                    <option value="China">China</option>
                                </select>
                            </div>
                        </div>
                        <!--City-->
                        <div class="col-lg-6">
                            <div class="form-group"> <label>City</label>
                                <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input
                                        type="text" id="city" name="city" placeholder="TP Hồ Chí Minh"> <span
                                        class="fas fa-check text-success pr-2"></span> </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <!--Province-->
                        <div class="col-lg-6">
                            <div class="form-group"> <label>Province</label>
                                <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input
                                        type="text" id="province" name="province" placeholder="Linh Trung" required> <span
                                        class="fas fa-check text-success pr-2"></span> </div>
                            </div>
                        </div>
                        <!--District-->
                        <div class="col-lg-6">
                            <div class="form-group"> <label>District</label>
                                <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input
                                        type="text" id="district" name="district" placeholder="Thu Duc" required>
                                    <span class="fas fa-check text-success pr-2"></span> </div>
                            </div>
                        </div>
                    </div>
                    <!--Ward-->
                        <div class="form-group"> <label>Ward</label>
                            <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input
                                    type="text" id="ward" name="ward" placeholder="Khu phố 6" required>
                                <span class="fas fa-check text-success pr-2"></span> </div>
                        </div>

                    <div class="form-group"> <label>Address Detail</label>
                        <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input
                                type="text" value="NY"> <span class="fas fa-check text-success pr-sm-2 pr-0"></span>
                        </div>
                    </div>

                </form>
            </div> <input type="checkbox" checked> <label>Shipping address is same as billing</label>
            <div id="address" class="bg-light rounded mt-3">
                <div class="h5 font-weight-bold text-primary"> Shopping Address </div>
                <div class="d-md-flex justify-content-md-start align-items-md-center pt-3">
                    <div class="mr-auto"> <b>Home Address</b>
                        <p class="text-justify text-muted">542 W.14th Street</p>
                        <p class="text-uppercase text-muted">NY</p>
                    </div>
                    <div class="rounded py-2 px-3" id="register"> <a href="#"> <b>Register Now</b> </a>
                        <p class="text-muted">Create account to have multiple address saved</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-8 col-sm-10 offset-lg-0 offset-md-2 offset-sm-1 pt-lg-0 pt-3 blockInfo">
            <div id="cart" class="bg-white rounded">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="h6">Cart Summary</div>
                    <div class="h6"> <a href="#">Edit</a> </div>
                </div>
                <div class="d-flex jusitfy-content-between align-items-center pt-3 pb-2 border-bottom">
                    <div class="item pr-2"> <img
                            src="https://images.unsplash.com/photo-1569488859134-24b2d490f23f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                            alt="" width="80" height="80">
                        <div class="number">2</div>
                    </div>
                    <div class="d-flex flex-column px-3"> <b class="h5">BattleCreek Coffee</b> <a href="#"
                                                                                                  class="h5 text-primary">C-770</a> </div>
                    <div class="ml-auto"> <b class="h5">$80.9</b> </div>
                </div>
                <div class="my-3"> <input type="text" class="w-100 form-control text-center"
                                          placeholder="Gift Card or Promo Card"> </div>
                <div class="d-flex align-items-center">
                    <div class="display-5">Subtotal</div>
                    <div class="ml-auto font-weight-bold">$80.9</div>
                </div>
                <div class="d-flex align-items-center py-2 border-bottom">
                    <div class="display-5">Shipping</div>
                    <div class="ml-auto font-weight-bold">$12.9</div>
                </div>
                <div class="d-flex align-items-center py-2">
                    <div class="display-5">Total</div>
                    <div class="ml-auto d-flex">
                        <div class="text-primary text-uppercase px-3">usd</div>
                        <div class="font-weight-bold">$92.98</div>
                    </div>
                </div>
            </div>
            <p class="text-muted">Need help with an order?</p>
            <p class="text-muted"><a href="#" class="text-danger">Hotline:</a>+314440160 (International)</p>
            <div class="h4 pt-3"> <span class="fas fa-shield-alt text-primary pr-2"></span> Security of your
                shopping</div>
            <div id="summary" class="bg-white rounded py-2 my-4">
                <div class="table-responsive">
                    <table class="table table-borderless w-75">
                        <tbody>
                        <tr class="text-muted">
                            <td>Battlecreek Coffee</td>
                            <td>:</td>
                            <td>$80.9</td>
                        </tr>
                        <tr class="text-muted">
                            <td>Code-770</td>
                            <td>:</td>
                            <td>770</td>
                        </tr>
                        <tr class="text-muted">
                            <td>Quantity</td>
                            <td>:</td>
                            <td>
                                <div class="d-flex align-items-center"> <span
                                        class="fas fa-minus btn text-muted"></span> <span>2</span> <span
                                        class="fas fa-plus btn text-muted"></span> </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="border-top py-2 d-flex align-items-center ml-2 font-weight-bold">
                    <div>Total</div>
                    <div class="ml-auto text-primary">USD</div>
                    <div class="px-2">$92.98</div>
                </div>
            </div>
            <div class="row pt-lg-3 pt-2 buttons mb-sm-0 mb-2">
                <div class="col-md-6 pt-md-0 pt-3">
                    <div class="btnNav text-uppercase btnBack">back to shopping</div>
                </div>
                <div class="col-md-6 pt-md-0 pt-3">
                    <div class="btnNav ml-auto text-uppercase btnContinue"><span class="fas fa-lock"></span>
                        Continue</div>
                </div>
            </div>
            <div class="text-muted pt-3" id="mobile"> <span class="fas fa-lock"></span>Your information is save
            </div>
        </div>
    </div>
    <div class="text-muted"> <span class="fas fa-lock"></span> Your information is save </div>
</div>

<!-- messenger -->
<div class="messenger">
    <a href=""><img src="<c:url value='https://i.ibb.co/kQJ0hLq/mees.png'/>" alt="" width="70px"></a>
</div>
<div class="up">
    <a href="#" class="iconUp"><i class="fa fa-arrow-circle-up"></i></a>
</div>


<!-- Footer -->
<%@ include file="layout/footer.jsp" %>
<!-- End Footer -->

<!--Bootstrap 4 JS-->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
<!--Jquery-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Custom Scripts -->
<script src="<c:url value='/template/web/js/payment.js'/>"></script>
</body>

</html>
