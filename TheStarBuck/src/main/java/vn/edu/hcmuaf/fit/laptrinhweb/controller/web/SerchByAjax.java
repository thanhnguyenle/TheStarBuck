package vn.edu.hcmuaf.fit.laptrinhweb.controller.web;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.ProductService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


@WebServlet(name = "SerchByAjax", value = "/searchAjax")
public class SerchByAjax extends HttpServlet {
    ProductService productService = ProductService.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String txtSearch = request.getParameter("search");
        List<Product> products = productService.searchByName(txtSearch);
        PrintWriter pw = response.getWriter();
        for (Product pro: products) {
            pw.println();
        }

        request.getRequestDispatcher("/views/web/profileAccount.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
