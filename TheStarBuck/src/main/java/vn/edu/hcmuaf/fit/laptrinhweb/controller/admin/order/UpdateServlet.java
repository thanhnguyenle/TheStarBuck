package vn.edu.hcmuaf.fit.laptrinhweb.controller.admin.order;


import vn.edu.hcmuaf.fit.laptrinhweb.model.Orders;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UpdateOrderServlet", value = "/updateOrder")
public class UpdateServlet extends HttpServlet {
    private OrderService orderService = OrderService.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Orders orders = orderService.getItem(id);

        HttpSession session = request.getSession();
        session.setAttribute("orders", orders);
        request.getRequestDispatcher("/views/admin/orderEdition.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("idTopping");


        Orders orders = orderService.getItem(id);



        orderService.save(orders);

        response.sendRedirect(request.getContextPath() +"/order");
    }
}
