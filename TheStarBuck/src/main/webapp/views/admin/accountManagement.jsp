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
                                    <th>name</th>
                                    <th>active</th>
                                    <th>phone number</th>
                                    <th>email</th>
                                    <th>password</th>
                                    <th>avatar</th>
                                    <th>Operation</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="odd gradeX">
                                    <td>1</td>
                                    <td>Nguyen Van A</td>
                                    <td>1</td>
                                    <td class="center">123456789</td>
                                    <td class="center">a@gmail.com</td>
                                    <td>123</td>
                                    <td>123</td>
                                    <td class=" text-center">
                                        <a href="#" class="btn btn-danger" data-toggle="modal"
                                           data-target="#deleteObject">Delete</a>
                                        <a href="<c:url value='/views/admin/accountEdition.jsp'/>" target="_blank" class="btn btn-info">Edit</a>
                                    </td>
                                </tr>
                                <tr class="odd gradeX">
                                    <td>2</td>
                                    <td>Nguyen Van B</td>
                                    <td>1</td>
                                    <td class="center">145236987</td>
                                    <td class="center">b@gmail.com</td>
                                    <td>123</td>
                                    <td>123</td>
                                    <td class=" text-center">
                                        <a href="#" class="btn btn-danger" data-toggle="modal"
                                           data-target="#deleteObject">Delete</a>
                                        <a href="editAccount.html" target="_blank" class="btn btn-info">Edit</a>
                                    </td>
                                </tr>
                                <tr class="odd gradeX">
                                    <td>3</td>
                                    <td>Nguyen Van C</td>
                                    <td>1</td>
                                    <td class="center">987563214</td>
                                    <td class="center">c@gmail.com</td>
                                    <td>123</td>
                                    <td>123</td>
                                    <td class=" text-center">
                                        <a href="#" class="btn btn-danger" data-toggle="modal"
                                           data-target="#deleteObject">Delete</a>
                                        <a href="editAccount.html" target="_blank" class="btn btn-info">Edit</a>
                                    </td>
                                </tr>
                                <tr class="odd gradeX">
                                    <td>4</td>
                                    <td>Nguyen Van D</td>
                                    <td>1</td>
                                    <td class="center">98136982457</td>
                                    <td class="center">d@gmail.com</td>
                                    <td>123</td>
                                    <td>123</td>
                                    <td class=" text-center">
                                        <a href="#" class="btn btn-danger" data-toggle="modal"
                                           data-target="#deleteObject">Delete</a>
                                        <a href="editAccount.html" target="_blank" class="btn btn-info">Edit</a>
                                    </td>
                                </tr>
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
        url = "http://localhost:8080/TheStarBuck/api/account?action=list";
        $.ajax({
            type: "GET",
            url: url,
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
