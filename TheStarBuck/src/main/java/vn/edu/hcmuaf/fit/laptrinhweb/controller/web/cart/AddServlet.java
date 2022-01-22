package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.cart;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Cart;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AddCartServlet", value = "/add-cart")
public class AddServlet extends HttpServlet {
    private ProductService productService;

    public AddServlet() {
        productService = ProductService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //get product id from request
        String id = request.getParameter("id");
        Product product = productService.getItem(id);
        if(product != null){
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if(cart == null){
                cart = Cart.getInstance();
            }
            cart.putProduct(product);
        }
        response.sendRedirect(request.getContextPath() +"/cart");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}