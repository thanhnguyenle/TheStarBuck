package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.send_mail;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/Verifycode")
public class VerifyCode extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try(PrintWriter out = response.getWriter()){
            HttpSession session = request.getSession();
            session.getAttribute("authcode");
        }
    }

}
