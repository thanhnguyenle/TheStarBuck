<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %><%--
  Created by IntelliJ IDEA.
  User: MinhNhu
  Date: 8/15/2022
  Time: 9:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page 404</title>
    <link rel="stylesheet" href="<%= Asset.url("/template/web/css/page404.css")%>" />
</head>

<body>
<div id="clouds">
    <div class="cloud x1"></div>
    <div class="cloud x1_5"></div>
    <div class="cloud x2"></div>
    <div class="cloud x3"></div>
    <div class="cloud x4"></div>
    <div class="cloud x5"></div>
</div>
<div class='c'>
    <div class='_404'>404</div>
    <hr>
    <div class='_1'>THE PAGE</div>
    <br/>
    <div class='_2'>WAS NOT FOUND</div>
    <br/>
    <a class='btn' href='#'>BACK TO HOME</a>
</div>

</body>

</html>