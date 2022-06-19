package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.login_google;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginGoogleServlet", value ="/doLoginGoogle")
public class LoginGoogleServlet  extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");
        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("/views/web/login.jsp");
            dis.forward(request, response);
        } else {
            String accessToken = GoogleUtils.getToken(code);
            GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
            Account account= new Account();
            account.setUsername(googlePojo.getName()+"");
            account.setEmail(googlePojo.getEmail());
            account.setFullname(googlePojo.getName());
            account.setAvatar(googlePojo.getPicture());
            account.setGroupId("MEMBER");
            HttpSession session = request.getSession(true);
            session.setAttribute("account", account);
            response.sendRedirect(request.getContextPath() + "/user-home");
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
