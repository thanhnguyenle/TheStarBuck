<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@include file="/common/taglib.jsp"%>
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
    <link rel="shortcut icon" href="./images/logo.png" type="image/png" />
    <!--Custom CSS-->
    <link rel="stylesheet" href="<%= Asset.url("/template/web/css/navigation.css")%>" />
    <!--custom footer-->
    <link rel="stylesheet" href="<%= Asset.url("/template/web/css/footer.css")%>" />
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="<%= Asset.url("/template/web/css/payment.css")%>" />
    <!--modal-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    <title>Payment</title>
</head>

<body>

  <!-- Navigation -->
  <jsp:include page="layout/header.jsp"/>

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
                        <div class="form-group"><label class="" for="name">Name</label>
                            <div class="d-flex jusify-content-start align-items-center rounded p-2"><input type="text"
                                    id="name" name="name" placeholder="Nguyen Van A" required> <span
                                    class="fas fa-check text-success pr-sm-2 pr-0"></span></div>
                        </div>
                        <!--phone number-->
                        <div class="form-group"><label class="" for="phone">Phone number</label>
                            <div class="d-flex jusify-content-start align-items-center rounded p-2"><input type="tel"
                                    id="phone" name="phone" placeholder="0123456789" required> <span
                                    class="fas fa-check text-success pr-sm-2 pr-0"></span></div>
                        </div>
                        <!--mail-->
                        <div class="form-group"><label class="" for="email">Email</label>
                            <div class="d-flex jusify-content-start align-items-center rounded p-2"><input type="email"
                                    id="email" name="email" placeholder="david.343@gmail.com">
                                <span class="fas fa-check text-success pr-sm-2 pr-0"></span></div>
                        </div>

                        <div class="row">
                            <!--Country-->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="country">Country</label>
                                    <select class="d-flex jusify-content-start align-items-center rounded p-2"
                                        name="country" id="country">
                                        <option value="Vietnam">Vietnam</option>
                                        <option value="China">China</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <!--Province-->
                                <div class="form-group">
                                    <label for="province">Province</label>
                                    <select class="d-flex jusify-content-start align-items-center rounded p-2"
                                        name="province" id="province">
                                    </select>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <!--District-->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="district">District</label>
                                    <select class="d-flex jusify-content-start align-items-center rounded p-2"
                                        name="district" id="district">
                                    </select>
                                </div>
                            </div>
                            <!--Ward-->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="ward">Ward</label>
                                    <select class="d-flex jusify-content-start align-items-center rounded p-2"
                                        name="ward" id="ward">
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group"><label for="addressDetail">Address Detail</label>
                                    <div class="d-flex jusify-content-start align-items-center rounded p-2">
                                        <textarea style="width:100%;resize: none;border: none;" id="addressDetail"
                                            name="addressDetail"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div style="display:flex;font-size:0.5rem">
                <div>
                    <input type="checkbox" id="checkboxSave" name="checkboxSave" checked>
                    <label for="checkboxSave">Save this address</label>
                </div> 
                <div>
                    <input type="checkbox" id="checkboxBilling" name="checkboxBilling" checked>
                    <label for="checkboxBilling">Shipping address is same as billing</label>
                </div> 
                <div id="address" class="bg-light rounded mt-3">
                    <div class="h5 font-weight-bold text-primary"> Shopping Address</div>
                    <div class="d-md-flex justify-content-md-start align-items-md-center pt-3">
                        <div class="mr-auto"><b>Home Address</b>
                            <p class="text-justify text-muted">542 W.14th Street</p>
                            <p class="text-uppercase text-muted">NY</p>
                        </div>
                        <div class="rounded py-2 px-3" id="register"><a href="#"> <b>List Address</b> </a>
                            <p class="text-muted">Have multiple address saved</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-8 col-sm-10 offset-lg-0 offset-md-2 offset-sm-1 pt-lg-0 pt-3 blockInfo">
                <div id="cart" class="bg-white rounded">
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="h6">Cart Summary</div>
                        <div class="h6"><a href="#">Edit</a></div>
                    </div>
                    <div class="d-flex jusitfy-content-between align-items-center pt-3 pb-2 border-bottom">
                        <div class="item pr-2"><img
                                src="https://images.unsplash.com/photo-1569488859134-24b2d490f23f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                                alt="" width="80" height="80">
                            <div class="number">2</div>
                        </div>
                        <div class="d-flex flex-column px-3"><b class="h5">BattleCreek Coffee</b> <a href="#"
                                class="h5 text-primary">C-770</a>
                        </div>
                        <div class="ml-auto"><b class="h5">$80.9</b></div>
                    </div>
                    <div class="my-3"><label>
                            <input type="text" class="w-100 form-control text-center"
                                placeholder="Gift Card or Promo Card">
                        </label></div>
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
                <div class="h4 pt-3"><span class="fas fa-shield-alt text-primary pr-2"></span> Security of your
                    shopping
                </div>
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
                                                class="fas fa-plus btn text-muted"></span></div>
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
                           <a href="order.jsp">Continue</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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

    <!--Bootstrap 4 JS-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <!--Jquery-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Custom Scripts -->
<%--    <script src="./js/payment.js"></script>--%>
  <script src="<%= Asset.url("/template/web/js/payment.js")%>"></script>
      <!-- jQuery Modal -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
</body>

</html>