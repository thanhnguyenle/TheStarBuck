<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 3/1/2022
  Time: 9:29 AM
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

    <title>List User</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="https://i.ibb.co/nMxcqW4/logo.png" type="image/png" />
    <!-- Core CSS - Include with every page -->
<%--    <link href="css/bootstrap.min.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="<%= Asset.url("/template/admin/css/bootstrap.min.css")%>" />
<%--    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="<%= Asset.url("/template/admin/font-awesome/css/font-awesome.css")%>" />

    <!-- Page-Level Plugin CSS - Tables -->
<%--    <link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="<%= Asset.url("/template/admin/css/plugins/dataTables/dataTables.bootstrap.css")%>" />

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
                <h1 class="page-header">User Tables</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Data User
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>username</th>
                                    <th>fullname</th>
                                    <th>active</th>
                                    <th>phone number</th>
                                    <th>email</th>


                                    <th>Operation</th>
                                </tr>
                                </thead>
                                <tbody>
                            <c:forEach items="${accs}" var="item">
                                <tr class="odd gradeX">
                                    <td>${item.id}</td>
                                    <td>${item.username}</td>
                                    <td>${item.fullname}</td>
                                    <td>${item.active}</td>
                                    <td class="center">${item.phoneNumber}</td>
                                    <td class="center">${item.email}</td>


                                    <td class=" text-center">
                                        <a href="#" class="btn btn-danger" data-toggle="modal"
                                           data-target="#deleteObject">Delete</a>
                                        <a href="<c:url value='/views/admin/accountEdition.jsp'/>" target="_blank" class="btn btn-info">Edit</a>
                                    </td>
                                </tr>
                            </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <p id="commonModal"></p>
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
<<script src="<%= Asset.url("/template/admin/js/plugins/metisMenu/jquery.metisMenu.js")%>"></script>

<!-- Page-Level Plugin Scripts - Tables -->
<%--<script src="js/plugins/dataTables/jquery.dataTables.js"></script>--%>
<script src="<%= Asset.url("/template/admin/js/plugins/dataTables/jquery.dataTables.js")%>"></script>
<%--<script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>--%>
<script src="<%= Asset.url("/template/admin/js/plugins/dataTables/dataTables.bootstrap.js")%>"></script>
<!-- SB Admin Scripts - Include with every page -->
<%--<script src="js/sb-admin.js"></script>--%>
<script src="<%= Asset.url("/template/admin/js/sb-admin.js")%>"></script>

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    });
    jQuery(function (){
        url = "http://localhost:8080/TheStarBuck/api/account?action=get";
        $.ajax({
            type: "GET",
            url: url,
            data: {},
            dataType: "json",
            contentType: "application/json",
            success: function (){

            }
        })
    })
</script>
<%--<script src="/js/commonHtml.js"></script>--%>
<script src="<%= Asset.url("/template/admin/js/commonHtml.js")%>"></script>
</body>

</html>
