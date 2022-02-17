package vn.edu.hcmuaf.fit.laptrinhweb.controller.admin.profile;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.AccountService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "Profile", value = "/admin-profile")
public class Profile extends HttpServlet {
    AccountService accountService = AccountService.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        session.setAttribute("account", account);
        request.getRequestDispatcher("/views/admin/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        String fullname = request.getParameter("fullNameAccount");
//        String active = request.getParameter("active"); // how to get?
        String email = request.getParameter("emailAccount");
        String phoneNumber = request.getParameter("phoneAccount");


//        if(active.equals("0")){
//            account.setActive(false);
//        } else {
//            account.setActive(true);}
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        try {
            date = df.parse(account.getCreatedDate() + "");
        } catch (ParseException e) {
            e.printStackTrace();
        }

        System.out.println(account.getLastLogin());
        account.setFullname(fullname);
        account.setEmail(email);
        account.setPhoneNumber(phoneNumber);

        accountService.save(account);

        session.setAttribute("account", account);
        response.sendRedirect(request.getContextPath() +"/admin-profile");
    }
}
