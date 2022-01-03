<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 2/1/2022
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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