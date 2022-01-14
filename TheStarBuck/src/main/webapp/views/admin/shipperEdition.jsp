<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 13/1/2022
  Time: 9:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.model.Shipper" %>
<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Shipper shipper = (Shipper) request.getAttribute("shipper");
%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Edit Shipper</title>
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
                <h1 class="page-header">Edit Shipper</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Data Shipper
                    </div>
                    <div class="panel-body">
                        <form role="form" action="${pageContext.request.contextPath}/updateShipper" method="post">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>ID</label>
                                        <input class="form-control" name="idShipper" value="${shipper.id}" placeholder="Enter id">
                                    </div>
                                    <div class="form-group">
                                        <label>Name</label>
                                        <input class="form-control" name="nameShipper" value="${shipper.name}" placeholder="Enter name">
                                    </div>
                                    <div class="form-group">
                                        <label>Phone</label>
                                        <input class="form-control" name="mobile" value="${shipper.mobile}" placeholder="Enter phone">
                                    </div>
                                    <div class="form-group">
                                        <label>Address Accounts</label>
                                        <input class="form-control" type="text" value="${shipper.address}" name="address" placeholder="Enter address">
                                    </div>
                                    <div class="form-group">
                                        <label>Modify by</label>
                                        <input class="form-control" type="text" name="modifiedBy" value="${shipper.modifiedBy}" placeholder="Enter create by ">
                                    </div>
                                    <button type="submit" name="update" class="btn btn-success">Update</button>
                                    <button type="reset"  name="reset" class="btn btn-default">Reset</button>
                                </div>
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

