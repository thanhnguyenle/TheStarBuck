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
@WebServlet("/verifyCode")
public class VerifyCode extends HttpServlet {
    protected void doGet(HttpServletRequest  request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/verifyEmail.jsp");
        rd.forward(request,response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try(PrintWriter out = response.getWriter()){
            HttpSession session = request.getSession();
            String codeEmail = (String) session.getAttribute("authcode");
            String code = request.getParameter("authcode");
            if(code.equals(codeEmail)){
                RequestDispatcher rd = request.getRequestDispatcher("/views/web/login.jsp");
                rd.forward(request,response);
            }
            else{
                RequestDispatcher rd = request.getRequestDispatcher("/views/web/verifyEmail.jsp");
                rd.forward(request,response);
            }
        } catch (ServletException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req,resp);
    }
}
