package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.send_mail;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.URL;
import java.nio.charset.StandardCharsets;

@WebServlet("/activeAccount")
public class AccountVerifyServlet extends HttpServlet {
    private final SendEmail se = SendEmail.getInstance();
    protected void doGet(HttpServletRequest  request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/createAcc.jsp");
        rd.forward(request,response);
    }
    protected void processRequest (HttpServletRequest  request, HttpServletResponse response) throws ServletException, IOException {
        String emailTo = request.getParameter("email");
        String nameTo = request.getParameter("name");

        String code = se.getRandom();
        StringBuilder result = new StringBuilder();
        InputStream is = new URL("/views/web/content_mail/forget_password.jsp").openStream();
        BufferedReader netIn = new BufferedReader(new InputStreamReader(is, StandardCharsets.UTF_8));
        String line = "";
        while((line=netIn.readLine())!=null){
            String old = "#codeResetPassword#";
            if(line.equals(old)){
                line.replaceFirst(old,code);
            }
                result.append(line.trim());


        }
        boolean test = se.sendEmail(emailTo,result.toString());
        if(test){
            HttpSession session = request.getSession();
            session.setAttribute("authcode",code);
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/verifyEmail.jsp");
            rd.forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }
}
