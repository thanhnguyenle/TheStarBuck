package vn.edu.hcmuaf.fit.laptrinhweb.controller.web;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb.paging.IPageAble;
import vn.edu.hcmuaf.fit.laptrinhweb.paging.PageRequest;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.print.Pageable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet(name = "MenuServlet", value = "/menu")
public class MenuServlet extends HttpServlet {
    private ProductService productService;
//    private Map<String, Product> mapPro;
    private List<Product> products;
    private IPageAble pageable;
    private int page =1;
    private int maxPageItem = 9;
    private int totalItem =0;
    public MenuServlet() {
        productService = ProductService.getInstance();
        pageable = new PageRequest(page,maxPageItem);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageStr = request.getParameter("page");
        String maxPageItemStr = request.getParameter("maxPageItem");
        Integer offset = (page - 1) * maxPageItem;

        if(pageStr!=null){
            page = Integer.parseInt(pageStr);
        }else{
            page = 1;
        }

        if(maxPageItemStr!=null){
            maxPageItem = Integer.parseInt(maxPageItemStr);
        }
        pageable = new PageRequest(page,maxPageItem);
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                products = productService.findAll(pageable);
            }
        });
        thread.start();

        Thread thread1 = new Thread(new Runnable() {
            @Override
            public void run() {
                totalItem = productService.totalItem();
            }
        });
        thread1.start();

        HttpSession session = request.getSession();
        session.setAttribute("products", products);
        //paging attribute setup
        session.setAttribute("page", page);
        session.setAttribute("totalPage", (int) Math.ceil((double) totalItem / maxPageItem));
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/products.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
