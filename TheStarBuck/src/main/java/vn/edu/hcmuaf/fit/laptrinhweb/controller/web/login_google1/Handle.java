package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.login_google1;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.impl.AccountDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.AccountService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

@WebServlet(name = "Handle", value = "/doLoginGoogle")
public class Handle extends HttpServlet {
    private static final long serivalVersionUID = 1L;

    public Handle() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
