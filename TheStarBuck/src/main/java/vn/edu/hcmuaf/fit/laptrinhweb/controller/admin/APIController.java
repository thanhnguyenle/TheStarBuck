package vn.edu.hcmuaf.fit.laptrinhweb.controller.admin;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "APIController", value = "/api/*")
public class APIController extends HttpServlet {
    AccountService accountService = AccountService.getInstance();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getPathInfo();
        switch (action){
            case "/account":
                account(request, response);
                break;
        }
    }

    private void account(HttpServletRequest request, HttpServletResponse response) {
        String action = request.getParameter("action");
        switch (action){
            case "create":
                creatAccount(request, response);
                break;
            case  "list":
                listAccount(request, response);
                break;
        }
    }

    private void listAccount(HttpServletRequest request, HttpServletResponse response) {
        Map<String, Account> list = accountService.getAll();
        HttpSession session = request.getSession();
        List<Account> accs = (List<Account>) list.values();
        session.setAttribute("accs", accs);

    }

    private void creatAccount(HttpServletRequest request, HttpServletResponse response) {
//        trong đây làm như 1 controller

        Account account = new Account();
        account.setId("");

        accountService.save(account);
    }

}
