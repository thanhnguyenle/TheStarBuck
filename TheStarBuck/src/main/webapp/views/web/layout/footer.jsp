<%--
  Created by IntelliJ IDEA.
  User: DUONGMINHNHU
  Date: 11/12/2021
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
    </div>
</footer>
<!-- End Footer -->