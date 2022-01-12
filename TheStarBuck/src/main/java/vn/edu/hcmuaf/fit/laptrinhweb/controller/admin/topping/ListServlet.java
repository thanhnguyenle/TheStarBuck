package vn.edu.hcmuaf.fit.laptrinhweb.controller.admin.topping;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ToppingServlet", value = "/topping")
public class ListServlet extends HttpServlet {


    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        List<Category> categories = categoryService.findAll();
//        request.setAttribute("categories", categories);
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/toppingManagement.jsp");
        rd.forward(request,response);
//        response.sendRedirect(request.getContextPath() + request.getServletPath() +  "/list");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
