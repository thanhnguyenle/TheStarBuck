package vn.edu.hcmuaf.fit.laptrinhweb.controller.admin;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

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

    private void account(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action){
            case "create":
                creatAccount(request, response);
                break;
            case  "get":
                getAccount(request, response);
                break;
        }
    }

    private void getAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, Account> list = accountService.getAll();
        HttpSession session = request.getSession();
        List<Account> accs = new ArrayList<Account>(list.values());
        session.setAttribute("accs", accs);
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/accountManagement.jsp");
        rd.forward(request,response);
    }

    private void creatAccount(HttpServletRequest request, HttpServletResponse response) {
//        trong đây làm như 1 controller
        String username = request.getParameter("nameAccount");
        String fullname = request.getParameter("fullNameAccount");
        String active = request.getParameter("active"); // how to get?
        String phoneNumber = request.getParameter("phoneAccount");
        String email = request.getParameter("emailAccount");
        String image = request.getParameter("avatar");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String about = request.getParameter("about");
        String groupId = request.getParameter("groupId");
        String createdDate = request.getParameter("createdDate");//new SimpleDateFormat("yyyy-MM-dd").format(new Date())
        String createdBy = request.getParameter("createdBy");
        Account account = new Account();
        account.setId("");
        account.setUsername(username);
        account.setFullname(fullname);
        account.setActive(true);
        account.setPhoneNumber(phoneNumber);
        account.setEmail(email);
        account.setAvatar(image);
        account.setPassword(password);
        account.setAddressId(address);
        account.setAboutMe(about);
        account.setGroupId(groupId);
        account.setCreatedBy(createdBy);

        accountService.save(account);
    }

}
