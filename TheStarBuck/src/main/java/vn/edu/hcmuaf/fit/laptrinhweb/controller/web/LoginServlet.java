package vn.edu.hcmuaf.fit.laptrinhweb.controller.web;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.xml.bind.DatatypeConverter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "LoginServlet", value = "/doLogin")
public class LoginServlet extends HttpServlet {
    AccountService accountService = AccountService.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String error = "";
        //decode password
        if(password!=null)
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(password.getBytes());
            byte[] digest = md.digest();
            password = DatatypeConverter.printHexBinary(digest).toUpperCase();
        } catch (NoSuchAlgorithmException e) {
//            error = "Username is not exist";
        }
        Account account = accountService.login(username, password);
        HttpSession session = request.getSession();
        if(account != null){
            session.setAttribute("account", account);
            request.getRequestDispatcher("/views/web/index.jsp").forward(request, response);
        } else {
            if(!accountService.checkUsername(username)){
                error = "Username is not exist";
            } else {
            error = "Password is incorrect";}
            session.setAttribute("error", error);
            request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);
        }
    }
}
