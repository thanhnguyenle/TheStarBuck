<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/1/2022
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.model.Category" %>
<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Category category = (Category) request.getAttribute("category");
%>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Edit Category</title>
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
                <h1 class="page-header">Edit Category</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Data Category
                    </div>
                    <div class="panel-body">
                        <form role="form" action="${pageContext.request.contextPath}/updateCategory" method="post">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>ID Category</label>
                                        <input class="form-control" name="idCategory" value="${category.id}" placeholder="Enter id">
                                    </div>
                                    <div class="form-group">
                                        <label>Name Category</label>
                                        <input class="form-control" name="nameCategory" value="${category.name}" placeholder="Enter name">
                                    </div>
                                    <div class="form-group">
                                        <label>Icon Category</label>
                                        <input class="form-control" name="iconCategory" placeholder="Enter name" value="${category.icon}">
                                    </div>
                                    <div class="form-group">
                                        <label>File avatar</label>
                                        <input type="file" name="avatar" value="${category.avatar}">
                                    </div>
                                    <div class="form-group">
                                        <label>Active</label>
                                        <select class="form-control" name="active">
                                            <option value="0" <c:if test="${category.active == false}"> selected </c:if>>NO</option>
                                            <option value="1" <c:if test="${category.active == true}"> selected </c:if>>YES</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label>Modify by</label>
                                        <input class="form-control" name="modifiedBy"value="${category.modifiedBy}" placeholder="Enter create by">
                                    </div>
                                    <button type="submit" name="insert" class="btn btn-success">Update</button>
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

