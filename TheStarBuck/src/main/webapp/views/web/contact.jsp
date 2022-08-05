<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <jsp:include page="layout/css.jsp"/>
  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="<%= Asset.url("/template/web/css/contact.css")%>" />
  <title>Contact Us</title>
</head>

<body>
<jsp:include page="layout/header.jsp"/>
<!-- Content -->
<section class="section contact" >
	<div class="contact-in">
    <div class="contact-map">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2156930380206!2d106.78957711411725!3d10.871192760411668!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRwLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1632412179004!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    </div>
    <div class="contact-form">
      <h1>Contact Us</h1>
      <form action="${pageContext.request.contextPath}/contact" method="POST">
          <div class="modal-body forget-body">
              <div>
                  <p>${status_content==null?"":status_content}</p>
              </div>
          </div>
        <input type="text" placeholder="Name" name = "name" class="contact-form-txt" />
        <input type="text" placeholder="Email" name = "email" class="contact-form-txt" />
        <textarea placeholder="Message" name = "message" class="contact-form-textarea"></textarea>
        <button type="submit" class="contact-form-btn">Submit</button>
      </form>
    </div>
  </div>

</section>
<!-- Footer -->
<jsp:include page="layout/footer.jsp"/>
<!-- End Footer -->
<jsp:include page="layout/script.jsp"/>
  <!-- Custom Scripts -->
  <script src="<%= Asset.url("/template/web/js/product.js")%>"></script>
</body>

</html>