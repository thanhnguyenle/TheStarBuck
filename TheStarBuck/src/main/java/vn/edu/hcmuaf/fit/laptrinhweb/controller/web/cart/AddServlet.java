package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.cart;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Cart;
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


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}