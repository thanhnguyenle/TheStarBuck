package vn.edu.hcmuaf.fit.laptrinhweb.controller.web;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/doLogin")
public class LoginServlet extends HttpServlet {
    AccountService accountService = AccountService.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String error = "";

        Account account = accountService.login(username, password);
        HttpSession session = request.getSession();
        if(account != null){
            session.setAttribute("account", account);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            if(!accountService.checkUsername(username)){
                error = "Username is not exist";
            }
            error = "Password is incorrect";
            session.setAttribute("error", error);
            request.getRequestDispatcher("src/main/webapp/views/web/login.jsp").forward(request, response);
        }

    }
}
