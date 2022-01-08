<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/1/2022
  Time: 10:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.model.Product" %>
<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Add Product</title>
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
        <h1 class="page-header">Add Product</h1>
      </div>
      <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
      <div class="col-lg-12">
        <div class="panel panel-default">
          <div class="panel-heading">
            Data Product
          </div>
          <div class="panel-body">
            <form role="form" action="${pageContext.request.contextPath}/createProduct" method="post">
              <div class="row">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>ID Product</label>
                    <input class="form-control" name="idProduct" placeholder="Enter id">
                  </div>
                  <div class="form-group">
                    <label>Name Product</label>
                    <input class="form-control" name="nameProduct" placeholder="Enter name">
                  </div>

                  <div class="form-group">
                    <label>Type</label>
                    <input class="form-control" name="type" placeholder="Enter type">
                  </div>
                  <div class="form-group">
                    <label>Ingredients</label>
                    <textarea class="form-control" name="Ingredients"
                              placeholder="Enter ingredients" rows="3"></textarea>
                  </div>
                  <div class="form-group">
                    <label>Price</label>
                    <input class="form-control" name="price" placeholder="Enter price">
                  </div>
                  <div class="form-group">
                    <label>Discount</label>
                    <input class="form-control" name="discount" placeholder="Enter discount">
                  </div>
                  <div class="form-group">
                    <label>Quantity</label>
                    <input class="form-control" name="quantity" placeholder="Enter quantity">
                  </div>
                  <div class="form-group">
                    <label>Active</label>
                    <select class="form-control" name="active">
                      <option value="0">NO</option>
                      <option value="1">YES</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Hot</label>
                    <select class="form-control" name="hot">
                      <option value="0">NO</option>
                      <option value="1">YES</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>View</label>
                    <select class="form-control" name="view">
                      <option value="0">NO</option>
                      <option value="1">YES</option>
                    </select>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>Description</label>
                    <textarea class="form-control" name="description" placeholder="Description"
                              rows="3"></textarea>
                  </div>
                  <div class="form-group">
                    <label>File Image</label>
                    <input type="file" name="file">
                  </div>
                  <div class="form-group">
                    <label>DescriptionSeo</label>
                    <textarea class="form-control" name="descriptionSeo"
                              placeholder="DescriptionSeo" rows="3"></textarea>
                  </div>
                  <div class="form-group">
                    <label>KeywordSeo</label>
                    <textarea class="form-control" name="keywordSeo" placeholder="KeywordSeo"
                              rows="3"></textarea>
                  </div>
                  <div class="form-group">
                    <label>TitleSeo</label>
                    <textarea class="form-control" name="titleSeo" placeholder="TitleSeo"
                              rows="3"></textarea>
                  </div>
                  <div class="form-group">
                    <label>Note</label>
                    <textarea class="form-control" name="Note" placeholder="Enter note"
                              rows="3"></textarea>
                  </div>
                  <div class="form-group">
                    <label>Date Create</label>
                    <input class="form-control" name="dateCreated" placeholder="Enter text">
                  </div>
                  <div class="form-group">
                    <label>Created</label>
                    <input class="form-control" name="created" placeholder="Enter text">
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
