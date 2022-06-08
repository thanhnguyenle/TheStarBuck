package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.send_mail;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;

public class SendEmail {
    public String getRandom() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        return String.format("%06d",number);
    }

    public boolean sendEmail(String email) {
        boolean test = false;
        String toEmail = email;
        String fromEmail = "19130163@st.hcmuaf.edu.vn";
        String password = "01092001Nhu";
        try {
            Properties prop = new Properties();
            prop.put("mail.smtp.host", "smtp.gmail.com");
            prop.put("mail.smtp.port", "465");
            prop.put("mail.smtp.auth", "true");
            prop.put("mail.smtp.starttls.enable", "true");
            prop.put("mail.smtp.starttls.required", "true");
            prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
            prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            Session session = Session.getInstance(prop, new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(toEmail)
            );
            message.setSubject("Dear The StarBuck");
            message.setText("Your code is " + getRandom());
            Transport.send(message);
            test = true;
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return test;
    }
    public SendEmail(){
    }
}
