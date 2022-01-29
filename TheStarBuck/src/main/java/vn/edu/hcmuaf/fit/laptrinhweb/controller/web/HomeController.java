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

    public HomeController() {
        productService = ProductService.getInstance();
        accountService = AccountService.getInstance();
        addressService = AddressService.getInstance();
        slideService = SlideService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Slide> slides = slideService.printTypeSlide("MINI",5);
        List<Slide> slides1 = slideService.printTypeSlide("TITLE",3);
        List<Slide> slides2 = slideService.printTypeSlide("BANNER",1);
        List<Product> productLasest = productService.printTypeProductLatest(8);
        List<Product> productFeatured = productService.printTypeProductFeatured(8);
        List<Product> productHot = productService.printTypeProductHot(8);
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
