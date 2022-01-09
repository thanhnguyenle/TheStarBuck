<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/1/2022
  Time: 11:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Edit Product</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="https://i.ibb.co/nMxcqW4/logo.png" type="image/png" />
    <!-- Core CSS - Include with every page -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Page-Level Plugin CSS - Blank -->

    <!-- SB Admin CSS - Include with every page -->
    <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body>
<div id="wrapper">
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Admin Starbucks</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="profile.html"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li>
                        <a href="changerole.html"><i class="fa fa-gear fa-fw"></i> Setting</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                        </div>
                        <!-- /input-group -->
                    </li>
                    <li>
                        <a href="index.html"> Dashboard</a>
                    </li>
                    <li>
                        <a href="accounttable.html">User management</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="accounttable.html">List User</a>
                            </li>
                            <li>
                                <a href="addaccount.html">Add User</a>
                            </li>
                            <li>
                                <a href="editaccount.html">Edit User</a>
                            </li>
                            <li>
                                <a href="address.html">List Address</a>
                            </li>
                            <li>
                                <a href="addaddress.html">Add Address</a>
                            </li>
                            <li>
                                <a href="editaddress.html">Edit Address</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="shippertable.html">Shipper management</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="shippertable.html">List Shipper</a>
                            </li>
                            <li>
                                <a href="addshipper.html">Add Shipper</a>
                            </li>
                            <li>
                                <a href="editshipper.html">Edit Shipper</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="categoritable.html">Category management</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="categoritable.html">List Category</a>
                            </li>
                            <li>
                                <a href="addcategory.html">Add Category</a>
                            </li>
                            <li>
                                <a href="editcategory.html">Edit Category</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="productstable.html">Product management</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="productstable.html">List Product</a>
                            </li>
                            <li>
                                <a href="addproduct.html">Add product</a>
                            </li>
                            <li>
                                <a href="editproduct.html">Edit product</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="ordertable.html">Order management</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="ordertable.html">List Order</a>
                            </li>
                            <li>
                                <a href="addorder.html">Add Order</a>
                            </li>
                            <li>
                                <a href="editorder.html">Edit Order</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="contact.html">Contact management</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="contact.html">List contact</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="feedbacktable.html">FeedBack management</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="feedbacktable.html">List FeedBack</a>
                            </li>
                            <li>
                                <a href="addfeedback.html">Add FeedBack</a>
                            </li>
                            <li>
                                <a href="editfeedback.html">Edit FeedBack</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="slide.html">Pages management</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="navigationtable.html">Navigation</a>
                            </li>
                            <li>
                                <a href="slide.html">Slides</a>
                            </li>
                            <li>
                                <a href="footer.html">Footer</a>
                            </li>
                            <li>
                                <a href="menu.html">Menu</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="blogtable.html">Blog management</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="blogtable.html">List Blog</a>
                            </li>
                            <li>
                                <a href="addblog.html">Add Blog</a>
                            </li>
                            <li>
                                <a href="editblog.html">Edit Blog</a>
                            </li>

                        </ul>
                    </li>
                    <li>
                        <a href="toppingtable.html">Toppings management</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="toppingtable.html">List Topping</a>
                            </li>
                            <li>
                                <a href="addtoppings.html">Add Topping</a>
                            </li>
                            <li>
                                <a href="edittoppings.html">Edit Topping</a>
                            </li>

                        </ul>
                    </li>
                </ul>
                <!-- /#side-menu -->
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>


    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Edit Product</h1>
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
                        <form role="form">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>ID Product</label>
                                        <input class="form-control" name="idProduct" value="pr0001" placeholder="Enter id">
                                    </div>
                                    <div class="form-group">
                                        <label>Name Product</label>
                                        <input class="form-control" name="nameProduct" value="Cafe" placeholder="Enter name">
                                    </div>

                                    <div class="form-group">
                                        <label>Type</label>
                                        <input class="form-control" name="type" value="ca0001" placeholder="Enter type">
                                    </div>
                                    <div class="form-group">
                                        <label>Ingredients</label>
                                        <textarea class="form-control" name="Ingredients"
                                                  placeholder="Enter ingredients" rows="3" ></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Price</label>
                                        <input class="form-control" name="price" value="100$" placeholder="Enter price">
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
                                        <input class="form-control" name="created" value="Nhu" placeholder="Enter text">
                                    </div>
                                </div>
                                <button type="button" name="insert" class="btn btn-success">Update</button>
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
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>

<!-- Page-Level Plugin Scripts - Blank -->

<!-- SB Admin Scripts - Include with every page -->
<script src="js/sb-admin.js"></script>

<!-- Page-Level Demo Scripts - Blank - Use for reference -->

</body>

</html>

