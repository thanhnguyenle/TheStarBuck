<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="layout/css.jsp"/>
    <title>Forgot Password</title>
<%--    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" data-auto-replace-svg></script>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"--%>
<%--        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">--%>
<%--    <link rel="shortcut icon" type="images/logo.png" href="images/logo.png">--%>
<%--    <link rel="stylesheet" href="css/forgotpass.css">--%>
    <link rel="stylesheet" href="<%= Asset.url("/template/web/css/forgotpass.css")%>" />
</head>

<body style="margin-top:100px;margin-bottom: -50px;">
    <section class=" container login my-5 bg-light">
        <div class="">
            <div class="row g-0">
                <div class="col-lg-5 thumb-box">
                    <img src="images/forgotPassword.svg" class="img-fluid" alt="" srcset="">
                </div>
                <div class="col-lg-7 text-center py-4 loginContent">
                    <h1>FORGOT PASSWORD</h1>
                    <form>
                        <div class="form-row py-3">
                            <div class="offset-1 col-lg-10">
                                <input type="text" class="inp px-3" placeholder="email">
                            </div>
                        </div>
                        <div class="form-row py-3">
                            <div class="offset-1 col-lg-10">
                                <button type="submit" class="btn1">Submit</button>
                            </div>
                        </div>
                    </form>                    
                    </div>
                </div>
            </div>
    </section>

</body>
<script src="<%= Asset.url("/template/web/js/login.js")%>">
</script>
</html>