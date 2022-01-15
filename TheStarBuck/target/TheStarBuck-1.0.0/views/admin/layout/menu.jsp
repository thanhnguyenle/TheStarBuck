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
            <a href="<c:url value='/views/admin/home.jsp'/>"> Dashboard</a>
        </li>
        <li>
            <a href="<c:url value='/views/admin/accountManagement.jsp'/>">User management</a>
            <ul class="nav nav-second-level">
                <li>
<%--                    <a href="<c:url value='/views/admin/accountManagement.jsp'/>">List User</a>--%>
                    <a href="<%=request.getContextPath()%>/account">List User</a>
                </li>
                <li>
<%--                    <a href="<c:url value='/views/admin/accountAddition.jsp'/>">Add User</a>--%>
                    <a href="<%=request.getContextPath()%>/createAccount">Add User</a>
                </li>
                <li>
                    <a href="<c:url value='/views/admin/accountEdition.jsp'/>">Edit User</a>
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
            <a href="<%=request.getContextPath()%>/shipper">Shipper management</a>
            <ul class="nav nav-second-level">
                <li>
                    <a href="<%=request.getContextPath()%>/shipper">List Shipper</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/createShipper">Add Shipper</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/updateShipper">Edit Shipper</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/category">Category management</a>
            <ul class="nav nav-second-level">
                <li>
                    <a href="<%=request.getContextPath()%>/category">List Category</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/createCategory">Add Category</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/updateCategory">Edit Category</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/product">Product management</a>
            <ul class="nav nav-second-level">
                <li>
                    <a href="<%=request.getContextPath()%>/product">List Product</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/createProduct">Add product</a>
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
            <a href="<%=request.getContextPath()%>/contact">Contact management</a>
            <ul class="nav nav-second-level">
                <li>
                    <a href="<%=request.getContextPath()%>/contact">List contact</a>
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
            <a href="<%=request.getContextPath()%>/topping">Toppings management</a>
            <ul class="nav nav-second-level">
                <li>
                    <a href="<%=request.getContextPath()%>/topping">List Topping</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/createTopping">Add Topping</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/updateTopping">Edit Topping</a>
                </li>

            </ul>
        </li>
    </ul>
    <!-- /#side-menu -->
</div>
