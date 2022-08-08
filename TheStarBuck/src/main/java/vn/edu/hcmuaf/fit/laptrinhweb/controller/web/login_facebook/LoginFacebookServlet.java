package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.login_facebook;

import com.restfb.types.User;
import vn.edu.hcmuaf.fit.laptrinhweb.controller.web.login_google.GooglePojo;
import vn.edu.hcmuaf.fit.laptrinhweb.controller.web.login_google.GoogleUtils;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginFacebookServlet", value ="/doLoginFacebook")
public class LoginFacebookServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");

        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("/views/web/login.jsp");
            dis.forward(request, response);
        } else {
            String accessToken = RestFB.getToken(code);
            User user = RestFB.getUserInfo(accessToken);
            Account u = new Account();
            u.setUsername(user.getName());

            u.setEmail(user.getEmail());
            u.setUsername(user.getName());
            u.setFullname(user.getName());
            u.setGroupId("MEMBER");
            HttpSession session = request.getSession(true);
            session.setAttribute("account", u);
            response.sendRedirect(request.getContextPath() + "/user-home");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
