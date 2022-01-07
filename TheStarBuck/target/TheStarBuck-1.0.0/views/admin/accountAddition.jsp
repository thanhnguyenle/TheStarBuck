<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 3/1/2022
  Time: 10:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Add Account</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="https://i.ibb.co/nMxcqW4/logo.png" type="image/png" />
    <!-- Core CSS - Include with every page -->
<%--    <link href="css/bootstrap.min.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="<%= Asset.url("/template/admin/css/bootstrap.min.css")%>" />
<%--    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="<%= Asset.url("/template/admin/font-awesome/css/font-awesome.css")%>" />

    <!-- Page-Level Plugin CSS - Blank -->

    <!-- SB Admin CSS - Include with every page -->
<%--    <link href="css/sb-admin.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="<%= Asset.url("/template/admin/css/sb-admin.css")%>" />

</head>
<body>
<div id="wrapper">
    <jsp:include page="layout/header.jsp"/>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Add Accounts</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Data Account
                    </div>
                    <div class="panel-body">
                        <form role="form" action="${pageContext.request.contextPath}/createAccount" method="post">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>ID Accounts</label>
                                        <input class="form-control" name="idAccount" placeholder="Enter Id">
                                    </div>
                                    <div class="form-group">
                                        <label>Name Accounts</label>
                                        <input class="form-control" name="nameAccount" placeholder="Enter name">
                                    </div>
                                    <div class="form-group">
                                        <label>FullName Accounts</label>
                                        <input class="form-control" name="fullNameAccount" placeholder="Enter full name">
                                    </div>
                                    <div class="form-group">
                                        <label>Active</label>
                                        <select class="form-control" name="active">
                                            <option value="0">Inactive</option>
                                            <option value="1">Still active</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Phone Accounts</label>
                                        <input class="form-control" name="phoneAccount" placeholder="Enter phone">
                                    </div>
                                    <div class="form-group">
                                        <label>Email Accounts</label>
                                        <input class="form-control" type="email" name="emailAccount" placeholder="Enter email" >
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>File Avatar</label>
                                        <input type="file" name="avatar">
                                    </div>
                                    <div class="form-group">
                                        <label>Password Accounts</label>
                                        <input class="form-control" type="password" name="password" placeholder="Enter password">
                                    </div>
                                    <div class="form-group">
                                        <label>Address Accounts</label>
                                        <input class="form-control" type="text" name="address" placeholder="Enter address">
                                    </div>
                                    <div class="form-group">
                                        <label>About Accounts</label>
                                        <input class="form-control" type="text" name="about" placeholder="Enter about">
                                    </div>
                                    <div class="form-group">
                                        <label>GroupId</label>
                                        <select class="form-control" name="groupId">
                                            <option value="ADMIN">Customer</option>
                                            <option value="MEMBER">Management</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Create data Accounts</label>
                                        <input class="form-control" type="text" name="createdDate" placeholder="Enter createData">
                                    </div>
                                    <div class="form-group">
                                        <label>Created Accounts</label>
                                        <input class="form-control" type="text" name="createdBy" placeholder="Enter created">
                                    </div>
                                </div>
                            </div>
                            <button type="submit" name="insert" class="btn btn-success">Insert</button>
                            <button type="reset"  name="reset" class="btn btn-default">Reset</button>
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
<script src="js/sb-admin.js"></script>
<script src="<%= Asset.url("/template/admin/js/sb-admin.js")%>"></script>

<!-- Page-Level Demo Scripts - Blank - Use for reference -->

</body>

</html>

