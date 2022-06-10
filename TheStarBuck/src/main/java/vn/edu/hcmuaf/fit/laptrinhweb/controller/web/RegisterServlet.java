package vn.edu.hcmuaf.fit.laptrinhweb.controller.web;

import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

@WebServlet(urlPatterns = "/handle-sign-up")
public class RegisterServlet extends HttpServlet {
    private AccountService accountService = AccountService.getInstance();
//    private Map<String, Object> mapCheck;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doPost(request, response);
        if(request.getParameter("username")==null){
            request.setAttribute("status",1);
            request.setAttribute("status_content","");
//            response.sendRedirect("handle-sign-up");
            request.getRequestDispatcher("/views/web/createAcc.jsp").forward(request,response);

        }
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String retypepassword = request.getParameter("retypepassword");

        if(accountService.checkUserEmail(email)){
            request.setAttribute("status",2);
            request.setAttribute("status_content","Email already registered, please register with another email");
//            response.sendRedirect("handle-sign-up");
            request.getRequestDispatcher("/views/web/createAcc.jsp").forward(request,response);
        }
        try {
            boolean isSave = accountService.isRegister(username,email,password,retypepassword);
            if(isSave){
//                response.sendRedirect("handle-login?login=user");
                request.getRequestDispatcher("/handle-login?login=user").forward(request,response);
            }
            else{
                request.setAttribute("status",2);
                request.setAttribute("status_content","\n" + "An error occurred, please try again");
//                response.sendRedirect("handle-sign-up");
                request.getRequestDispatcher("/views/web/createAcc.jsp").forward(request,response);
            }
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }


//        try {
//            mapCheck = accountService.register(username, email, password, retypepassword);
//        } catch (NoSuchAlgorithmException e) {
//            e.printStackTrace();
//        }
//
//        HttpSession session = request.getSession();
//                if (mapCheck.isEmpty()) {
//                    session.removeAttribute("error");
//                    RequestDispatcher rd = request.getRequestDispatcher("/views/web/login.jsp");
//                    rd.forward(request, response);
//                } else {
//                    for (String error : mapCheck.keySet()) {
//                        session.setAttribute(error, mapCheck.get(error));
//                    }
//                    request.getRequestDispatcher("/views/web/createAcc.jsp").forward(request, response);
//        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
//        String username = request.getParameter("username");
//        String email = request.getParameter("email");
//        String password = request.getParameter("password");
//        String retypepassword = request.getParameter("retypepassword");



//        try {
//            mapCheck = accountService.register(username, email, password, retypepassword);
//        } catch (NoSuchAlgorithmException e) {
//            e.printStackTrace();
//        }
//
//        HttpSession session = request.getSession();
//                if (mapCheck.isEmpty()) {
//                    session.removeAttribute("error");
//                    RequestDispatcher rd = request.getRequestDispatcher("/views/web/login.jsp");
//                    rd.forward(request, response);
//                } else {
//                    for (String error : mapCheck.keySet()) {
//                        session.setAttribute(error, mapCheck.get(error));
//                    }
//                    request.getRequestDispatcher("/views/web/createAcc.jsp").forward(request, response);
//        }
    }
}
