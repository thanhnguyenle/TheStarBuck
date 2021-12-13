package vn.edu.hcmuaf.fit.laptrinhweb.service.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.impl.ProductDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb.service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private ProductDAO productDAO = ProductDAO.getInstance();
    private static ProductService instance;
    private ProductService() {
    }

    public static ProductService getInstance(){
        if(instance==null)
            instance = new ProductService();
        return instance;
    }
    @Override
    public List<Product> findAll() {
        return productDAO.findAll();
    }

    @Override
    public Long save(Product product) {
        return productDAO.save(product);
    }
}
