package vn.edu.hcmuaf.fit.laptrinhweb.controller.admin.account;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.AccountService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UpdateServlet", value = "/updateAccount")
public class UpdateServlet extends HttpServlet {
    AccountService accountService = AccountService.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Account acc = accountService.getAcc(id);
        HttpSession session = request.getSession();
        session.setAttribute("acc", acc);
        request.getRequestDispatcher("/views/admin/accountEdition.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //        String id = request.getParameter("idAccount");
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
//        String createdDate = request.getParameter("createdDate");//new SimpleDateFormat("yyyy-MM-dd").format(new Date())
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

        response.sendRedirect(request.getContextPath() +"/account");
    }
}
