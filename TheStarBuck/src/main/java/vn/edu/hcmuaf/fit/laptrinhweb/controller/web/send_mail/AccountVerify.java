package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.send_mail;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/sendMailServlet")
public class AccountVerify extends HttpServlet {
    protected void doGet(HttpServletRequest  request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/createAcc.jsp");
        rd.forward(request,response);
    }
    protected void porcessRequest (HttpServletRequest  request, HttpServletResponse response) throws ServletException, IOException {
        String emailTo = request.getParameter("email");
        String nameTo = request.getParameter("name");
        SendEmail se = new SendEmail();
        String code = se.getRandom();
        boolean test = se.sendEmail(emailTo,code);
        if(test){
            HttpSession session = request.getSession();
            session.setAttribute("authcode",code);
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/verifyEmail.jsp");
            rd.forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      porcessRequest(request,response);
    }
}
