package vn.edu.hcmuaf.fit.laptrinhweb.controller.admin.shipper;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UpdateShipperServlet", value = "/updateShipper")
public class UpdateServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
//        Topping topping = toppingService.getItem(id);

        HttpSession session = request.getSession();
//        session.setAttribute("shipper", shipper);
        request.getRequestDispatcher("/views/admin/shipperEdition.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        Topping topping = toppingService.getItem(id);


//        toppingService.save(topping);

        response.sendRedirect(request.getContextPath() +"/shipper");
    }
}
