package vn.edu.hcmuaf.fit.laptrinhweb.controller.admin.contact;

import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.ContactService;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(name = "DeleteContactServlet",value = "/deleteContact")
public class DeleteServlet extends HttpServlet {
    ContactService contactService = ContactService.getInstance();
    public void init() throws ServletException{
        super.init();
    }
    protected  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.getRequestDispatcher(request.getContextPath()+"/contact").forward(request,response);
        System.out.println("--------------------");
        String id = request.getParameter("id");
        System.out.println(id);
        boolean check = contactService.deleteItem(id);
        if(check){
            System.out.println("++++++++++");
            doPost(request,response);
        } else {
            System.out.println("------------- something wrong");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() +"/contact");
    }
}
