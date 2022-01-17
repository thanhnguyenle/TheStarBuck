<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 17/1/2022
  Time: 11:27 PM
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

    <title>List Order</title>
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
                <h1 class="page-header">Order</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        DataTables Order
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>account id</th>
                                    <th>sessionId</th>
                                    <th>status</th>
                                    <th>address</th>
                                    <th>subTotal</th>
                                    <th>shippingFee</th>
                                    <th>note</th>
                                    <th>Operation</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="odd gradeX">
                                    <td>oi0001</td>
                                    <td>pr0001</td>
                                    <td></td>
                                    <td>1</td>
                                    <td class="center">10</td>
                                    <td class="center">2</td>
                                    <td>1</td>
                                    <td></td>
                                    <td class=" text-center">
                                        <a href="<%=request.getContextPath()%>/deleteOrder?id=${item.id}" class="btn btn-danger" data-toggle="modal"
                                           data-target="#deleteObject">Delete</a>
                                        <a href="<%=request.getContextPath()%>/updateOrder?id=${item.id}" target="_blank" class="btn btn-info">Edit</a>
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
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->
<%--model delete--%>
<form class="modal fade" id="deleteObject" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" method="post"
      aria-hidden="true" action="${pageContext.request.contextPath}/deleteOrder">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Notify</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Are you sure?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Delete</button>
            </div>
        </div>
    </div>
</form>
<%--model delete--%>

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
</script>

</body>

</html>
