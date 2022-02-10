package vn.edu.hcmuaf.fit.laptrinhweb.controller.web;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Slide;
import vn.edu.hcmuaf.fit.laptrinhweb.service.IAccountService;
import vn.edu.hcmuaf.fit.laptrinhweb.service.IAddressService;
import vn.edu.hcmuaf.fit.laptrinhweb.service.IProductService;
import vn.edu.hcmuaf.fit.laptrinhweb.service.ISlideService;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.AccountService;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.AddressService;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.ProductService;
import vn.edu.hcmuaf.fit.laptrinhweb.service.impl.SlideService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "user-home", value = "/user-home")
public class HomeController extends HttpServlet {
    private IProductService productService ;
    private IAccountService accountService ;
    private IAddressService addressService ;
    private ISlideService slideService;
    private List<Slide> slides;
    private List<Slide> slides1;
    private List<Slide> slides2;
    private List<Product> productLasest ;
    private List<Product> productFeatured ;
    private List<Product> productHot;

    public HomeController() {
        productService = ProductService.getInstance();
        accountService = AccountService.getInstance();
        addressService = AddressService.getInstance();
        slideService = SlideService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //CREATE THREAD
        Thread thread0 = new Thread(new Runnable() {
            @Override
            public void run() {
                slides = slideService.printTypeSlide("MINI",5);
            }
        });

        Thread thread1 = new Thread(new Runnable() {
            @Override
            public void run() {
                slides1 = slideService.printTypeSlide("TITLE",3);
            }
        });

        Thread thread2 = new Thread(new Runnable() {
            @Override
            public void run() {
                slides2 = slideService.printTypeSlide("BANNER",1);
            }
        });

        Thread thread3 = new Thread(new Runnable() {
            @Override
            public void run() {
                productLasest = productService.printTypeProductLatest(8);
            }
        });

        Thread thread4 = new Thread(new Runnable() {
            @Override
            public void run() {
                productFeatured = productService.printTypeProductFeatured(8);
            }
        });

        Thread thread5 = new Thread(new Runnable() {
            @Override
            public void run() {
                productHot = productService.printTypeProductHot(8);
            }
        });

        //start thread
        thread0.start();
        thread1.start();
        thread2.start();
        thread3.start();
        thread4.start();
        thread5.start();

        request.setAttribute("slideMini", slides);
        request.setAttribute("slideTitle", slides1);
        request.setAttribute("slideBanner", slides2);
        request.setAttribute("listProductLasest", productLasest);
        request.setAttribute("listProductFeatured", productFeatured);
        request.setAttribute("listProductHot", productHot);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/index.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
