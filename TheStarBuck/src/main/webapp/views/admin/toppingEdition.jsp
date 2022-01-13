<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/1/2022
  Time: 11:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.model.Topping" %>
<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Topping topping = (Topping) request.getAttribute("topping");
%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Edit Toppings</title>
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
                <h1 class="page-header">Edit Topping</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Data Topping
                    </div>
                    <div class="panel-body">
                        <form role="form" action="${pageContext.request.contextPath}/updateTopping" method="post">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>Id Topping</label>
                                        <input class="form-control" name="idTopping" value="${topping.id}"
                                               placeholder="Enter id">
                                    </div>
                                    <div class="form-group">
                                        <label>Name Topping</label>
                                        <input class="form-control" name="nameTopping" placeholder="Enter name" value="${topping.name}">
                                    </div>
                                    <div class="form-group">
                                        <label>Price</label>
                                        <input class="form-control" name="price" placeholder="Enter price" value="${topping.price}">
                                    </div>

                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>Quantity</label>
                                        <input class="form-control" name="quantity" placeholder="Enter quantity" value="${topping.quantity}">
                                    </div>

                                    <div class="form-group">
                                        <label>Modify By</label>
                                        <input class="form-control" name="modifedBy" placeholder="Enter text" value="${topping.modifiedBy}">
                                    </div>
                                </div>
                                <button type="submit" name="insert" class="btn btn-success">Insert</button>
                                <button type="reset" name="reset" class="btn btn-default">Reset</button>
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
