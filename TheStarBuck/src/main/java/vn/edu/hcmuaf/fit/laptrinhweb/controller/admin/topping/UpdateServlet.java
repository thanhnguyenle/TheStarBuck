package vn.edu.hcmuaf.fit.laptrinhweb.controller.admin.topping;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UpdateToppingServlet", value = "/updateTopping")
public class UpdateServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String id = request.getParameter("id");
//        Category category = categoryService.getItem(id);

        HttpSession session = request.getSession();
//        session.setAttribute("category", category);
        request.getRequestDispatcher("/views/admin/toppingEdition.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



//        categoryService.save(category);

        response.sendRedirect(request.getContextPath() +"/topping");
    }
}
