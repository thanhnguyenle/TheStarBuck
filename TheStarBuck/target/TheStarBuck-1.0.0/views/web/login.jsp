<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String error = (String) session.getAttribute("error");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--    <meta name="google-signin-scope" content="profile email">--%>
<%--    <meta name="google-signin-client_id" content="427422137099-7af2n9dkd4k6ejnoajc609mtjnlhnoau.apps.googleusercontent.com">--%>
<%--    <script src="https://apis.google.com/js/platform.js" async defer></script>--%>
    <title>LOGIN</title>
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" data-auto-replace-svg></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="shortcut icon" type="images/logo.png" href="https://i.ibb.co/nMxcqW4/logo.png">
    <link rel="stylesheet" href="<%= Asset.url("/template/web/css/login.css")%>">
</head>

<body>
    <section class="container login my-5 bg-light">
        <div class="">
            <div class="row g-0">
                <div class="col-lg-5 thumb-box">
                    <img src="<c:url value="/template/web/image/loginTitle2.svg"/>" class="img-fluid" alt="" srcset="">
                </div>
                <div class="col-lg-7 text-center py-4 loginContent">
                    <h1>GET STARTED</h1>
                    <div class="logoImg ">
                        <a href="index.jsp"><img src="<c:url value="/template/web/image/logo.png"/>" alt=""> </a>
                    </div>

                    <form action="${pageContext.request.contextPath}/doLogin" method="post" class="pt-5">
                        <%
                            if(error != null) {
                        %>
                        <p style="color: red; font-weight: bold" id="error"> <%= error %> <p>
                        <%
                            }
                        %>
                        <div class="form-row py-3 ">
                            <div class="offset-1 col-lg-10">
                                <input type="text" class="inp px-3" placeholder="username" name="username" <% if(request.getParameter("username") != null) { %> value="<%= request.getParameter("username") %>" <% } %>>
                            </div>
                        </div>
                        <div class="form-row py-3">
                            <div class="offset-1 col-lg-10">
                                <input type="password"  class="inp px-3 ipnPassword" placeholder="password" id="pass" name="password">
                                <button class="btn btn-outline-secondary btnPassword" type="button" id="passeye">
                                    <span class="fas fa-eye"></span>
                                  </button>
                            </div>
                        </div>
                        <div class="form-row py-3">
                            <div class="offset-1 col-lg-10">
                                <button type="submit" class="btn1">Sign Up</button>
                            </div>
                        </div>
                    </form>                    
                    <p>Or Login With</p>
<%--                    <span><i class="fab fa-facebook"></i></span>--%>
                    <div class="login_with">
                        <!-- <span><i class="fab fa-facebook"></i></span>
                        <span><i class="fab fa-google-plus"></i></span> -->
<%--                        <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>--%>
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/TheStarBuck/doLogin&response_type=code
                        &client_id=427422137099-7af2n9dkd4k6ejnoajc609mtjnlhnoau.apps.googleusercontent.com">Login With Google</a>
                    </div>
                    <div class="pt-3">
                        <a class="creatAcc" href="<c:url value="/views/web/createAcc.jsp" />">Create Account</a>
                    </div>
                    <div class="pt-3">
                        <a class="forgotPass" href="forgotpass.jsp">Forget Password</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="<c:url value="/template/web/js/login.js"/>"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>