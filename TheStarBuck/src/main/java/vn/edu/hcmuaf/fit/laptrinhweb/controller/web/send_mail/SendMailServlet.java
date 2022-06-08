package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.send_mail;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;
import java.util.Random;

public class SendMailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public SendMailServlet(){
      super();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/sendMail.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final String username = "19130163@st.hcmuaf.edu.vn";
        final String password = "01092001Nhu";
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "465");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.starttls.required", "true");
        prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        // ket noi Smtp Server
        Session session = Session.getInstance(prop, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
//        Dang nhap duoc email
        // lay gia tri xuong
        String emailTo = request.getParameter("email");
        int min = 100000;
        int max = 999999;
        int random_int = (int) Math.floor(Math.random() * (max - min + 1) + min);
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(emailTo)
            );
            message.setSubject("Dear The StarBuck");
            message.setText("Your code is "+random_int);
            Transport.send(message);
            System.out.println("Done!");
        } catch (MessagingException ex) {
            ex.printStackTrace();
        }
    }
}
;