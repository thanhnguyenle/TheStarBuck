package vn.edu.hcmuaf.fit.laptrinhweb.controller.admin.shipper;



import vn.edu.hcmuaf.fit.laptrinhweb.model.Shipper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CreateShipperServlet", value = "/createShipper")
public class CreateServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// show form
        request.getRequestDispatcher("/views/admin/shipperAddition.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Shipper shipper = new Shipper();

//        toppingService.save(shipper);

        response.sendRedirect(request.getContextPath() +"/shipper");
    }
}
