package vn.edu.hcmuaf.fit.laptrinhweb.controller.web;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "login-google", value = "/login-google")
public class LoginGoogleServlet extends HttpServlet{
    private final AccountService accountService ;
    private Account account;
    private String fullname;
    private String email;

    public LoginGoogleServlet(AccountService accountService) {
        this.accountService = accountService;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        fullname = request.getParameter("fullname");
        email = request.getParameter("email");
        String error = "";
        // kiem tra xem gmail da dang ki
        if(!accountService.checkUserEmail(email)){

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
