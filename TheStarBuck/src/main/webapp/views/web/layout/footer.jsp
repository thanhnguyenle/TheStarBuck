<%--
  Created by IntelliJ IDEA.
  User: DUONGMINHNHU
  Date: 11/12/2021
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- messenger -->
<%--<div class="messenger">--%>
<%--    <a href=""><img src="<c:url value='https://i.ibb.co/kQJ0hLq/mees.png'/>" alt="" width="70px"></a>--%>
<%--</div>--%>
<jsp:include page="facebook_noti.jsp"/>
<div class="up">
    <a href="#" class="iconUp"><i class="fa fa-arrow-circle-up"></i></a>
</div>
<!-- Footer -->
<footer id="footer" class="section footer">
    <div class="container">
        <div class="footer-container">

            <div class="footer-center">
                <h3>INFORMATION</h3>
                <a href="<c:url value='/views/web/aboutUs.jsp'/>">About Us</a>
                <a href="<c:url value='/views/web/contact.jsp'/>">Contact Us</a>
                <a href="#">Site Map</a>
            </div>

            <div class="footer-center">
                <h3>SOCIAL MEDIA</h3>
                <div class="social_media">
            <span>
              <i class="fab fa-facebook"></i>
            </span>
                    <a href="<c:url value='https://www.facebook.com/duonhthiminhnhu0109'/>">Facebook</a>
                </div>
                <div class="social_media">
            <span>
              <i class="fab fa-twitter"></i>
            </span>
                    <a href="#">Twitter</a>

                </div>
                <div class="social_media">
            <span>
              <i class="fab fa-instagram"></i>
            </span>
                    <a href="#">Instagram</a>

                </div>


            </div>
            <div class="footer-center">
                <h3>CONTACT US</h3>
                <div>
            <span>
              <i class="fas fa-map-marker-alt"></i>
            </span>
                    42 Dream House, Dreammy street, 7131 Dreamville, USA
                </div>
                <div>
            <span>
              <i class="far fa-envelope"></i>
            </span>
                    company@gmail.com
                </div>
                <div>
            <span>
              <i class="fas fa-phone"></i>
            </span>
                    456-456-4512
                </div>
                <div class="payment-methods">
                    <img src="<c:url value='https://i.ibb.co/Fgzb6RY/payment.png'/>" alt="">
                </div>
            </div>
        </div>
    </div>
</footer>
<script>
    var chatbox = document.getElementById('fb-customer-chat');
    chatbox.setAttribute("page_id", "108540498635694");
    chatbox.setAttribute("attribution", "biz_inbox");
</script>

<!-- Your SDK code -->
<script>
    window.fbAsyncInit = function() {
        FB.init({
            xfbml            : true,
            version          : 'v14.0'
        });
    };

    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>


<!-- End Footer -->