package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.payment;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Cart;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Orders;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.OrderService;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CheckoutPaymentServlet", value = "/payment-checkout")
public class CheckoutServlet extends HttpServlet {
    private OrderService orderService;

    public CheckoutServlet() {
        orderService = OrderService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.getRequestDispatcher("/views/web/payment.jsp").forward(request, response);
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//get cart from session
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        Account account = (Account) session.getAttribute("account");
        Orders orders = new Orders();
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String note = "name: " + name + ", phone number: " + phone + ", email: " + email;
        String country = request.getParameter("country");
        String province = request.getParameter("province");
        String district = request.getParameter("district");
        String ward = request.getParameter("ward");
        String addressDetail = request.getParameter("addressDetail");
        String address = country + " " + province + " " + district + " " + ward + " " + addressDetail;
        orders.setIdAccount(account.getId());
        orders.setSubTotal(cart.getSubTotalPrice());
        orders.setGrandTotal(cart.getTotalPrice());
        orders.setNote(note);
        orders.setAddress(address);
        boolean checkFlag = orderService.createOrder(account, cart, orders);
        System.out.println("------ " + checkFlag);
        if(checkFlag){
            request.getRequestDispatcher("/views/web/order.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/payment");
        }
    }

}
