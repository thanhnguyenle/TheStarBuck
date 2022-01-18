<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 18/1/2022
  Time: 3:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.model.Orders" %>
<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Orders order = (Orders) request.getAttribute("order");
%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Edit Order</title>
  <!-- Favicon -->
  <link rel="shortcut icon" href="https://i.ibb.co/nMxcqW4/logo.png" type="image/png" />
  <!-- Core CSS - Include with every page -->
  <%--  <link href="css/bootstrap.min.css" rel="stylesheet">--%>
  <link rel="stylesheet" href="<%= Asset.url("/template/admin/css/bootstrap.min.css")%>" />
  <%--  <link href="font-awesome/css/font-awesome.css" rel="stylesheet">--%>
  <link rel="stylesheet" href="<%= Asset.url("/template/admin/font-awesome/css/font-awesome.css")%>" />

  <!-- Page-Level Plugin CSS - Blank -->

  <!-- SB Admin CSS - Include with every page -->
  <%--  <link href="css/sb-admin.css" rel="stylesheet">--%>
  <link rel="stylesheet" href="<%= Asset.url("/template/admin/css/sb-admin.css")%>" />

</head>

<body>

<div id="wrapper">
  <jsp:include page="layout/header.jsp"/>


  <div id="page-wrapper">
    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header">Edit Order</h1>
      </div>
      <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
      <div class="col-lg-12">
        <div class="panel panel-default">
          <div class="panel-heading">
            Data Order
          </div>
          <div class="panel-body">
            <form role="form">
              <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <label>Id order</label>
                        <input class="form-control" name="idOrder" placeholder="id order" disabled value="${order.id}">
                    </div>
                  <div class="form-group">
                    <label>User order</label>
                      <input class="form-control" name="sessionId" placeholder="Session id" disabled value="${order.idAccount}">
                </div>
                <div class="form-group">
                  <label>Session</label>
                  <input class="form-control" name="sessionId" placeholder="Session id" disabled value="${order.idSession}">
                </div>
                <div class="form-group">
                  <label>Token</label>
                  <input class="form-control" name="token" placeholder="Identify it over multiple sessions" disabled value="${order.token}">
                </div>
                <div class="form-group">
                  <label>Status</label>
                  <select class="form-control" name="status" disabled>
                    <option value="new">New</option>
                    <option value="checkout">Checkout</option>
                    <option value="paid">Paid</option>
                    <option value="failed" selected>Failed</option>
                    <option value="shipped">Shipped</option>
                    <option value="delivered">Delivered</option>
                    <option value="returned">Returned</option>
                    <option value="complete">Complete</option>
                  </select>
                </div>
                <div class="form-group">
                  <label>Discount</label>
                  <input class="form-control" type="number" name="discount" placeholder="Enter discount" value="0">
                </div>
                <div class="form-group">
                  <label>Tax</label>
                  <input class="form-control" type="number" name="tax" placeholder="Enter tax" value="${order.tax}">
                </div>

              </div>
              <div class="col-lg-6">
                <div class="form-group">
                  <label>Shipping</label>
                  <input class="form-control" type="text" name="shipping" placeholder="Enter shipping" value="${order.shipping}">
                </div>
                <div class="form-group">
                  <label>Grand total</label>
                  <input class="form-control" type="number" name="grandTotal" placeholder="Enter total" value="${order.grandTotal}">
                </div>
                <div class="form-group">
                  <label>Promo</label>
                  <input class="form-control" type="text" name="promo" placeholder="Enter promo" value="${order.promo}">
                </div>
                <div class="form-group">
                  <label>Note</label>
                  <textarea class="form-control" type="text" name="note" placeholder="Enter note" style="margin: 0px 24.1px 0px 0px; width: 549px; height: 133px;">${order.note}</textarea>
                </div>

              </div>

              <button type="submit" name="update" class="btn btn-success">Update</button>
              <button type="reset"  name="reset" class="btn btn-default">Reset</button>

          </div>

          </form>
        </div>
        <!-- /.row (nested) -->
      </div>
      <!-- /.panel-body -->
    </div>
    <!-- /.panel -->
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
</div>
<!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->

<!-- Core Scripts - Include with every page -->
<%--<script src="js/jquery-1.10.2.js"></script>--%>
<script src="<%= Asset.url("/template/admin/js/jquery-1.10.2.js")%>"></script>
<%--<script src="js/bootstrap.min.js"></script>--%>
<script src="<%= Asset.url("/template/admin/js/bootstrap.min.js")%>"></script>
<%--<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>--%>
<script src="<%= Asset.url("/template/admin/js/plugins/metisMenu/jquery.metisMenu.js")%>"></script>

<!-- Page-Level Plugin Scripts - Blank -->

<!-- SB Admin Scripts - Include with every page -->
<%--<script src="js/sb-admin.js"></script>--%>
<script src="<%= Asset.url("/template/admin/js/sb-admin.js")%>"></script>

<!-- Page-Level Demo Scripts - Blank - Use for reference -->

</body>

</html>

