package vn.edu.hcmuaf.fit.laptrinhweb.controller.web;

import com.google.gson.Gson;
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
    private int totalItem =-1;

    public MenuServlet() {
        productService = ProductService.getInstance();
        pageable = new PageRequest(page,maxPageItem);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //setup response
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");

        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                totalItem = productService.totalItem();
            }
        });
        thread.start();
        try {
            thread.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
                    if(totalItem!=-1) {
                        //paging attribute setup
                        HttpSession session = request.getSession();
                        session.setAttribute("page", page);
                        session.setAttribute("totalPage", (int) Math.ceil((double) totalItem / maxPageItem));
                        RequestDispatcher rd = request.getRequestDispatcher("/views/web/products.jsp");
                        try {
                            rd.forward(request, response);
                        } catch (ServletException|IOException e) {
                            e.printStackTrace();
                        }

                }
            }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
