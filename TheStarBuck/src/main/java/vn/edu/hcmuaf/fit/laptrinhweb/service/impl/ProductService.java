package vn.edu.hcmuaf.fit.laptrinhweb.service.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.impl.ProductDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb.service.IProductService;

import java.util.List;
import java.util.Map;

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

    @Override
    public List<Product> printTypeProductLatest(int num) {
        return productDAO.printTypeProductLatest(num);
    }

    @Override
    public List<Product> printTypeProductFeatured(int num) {
        return productDAO.printTypeProductFeatured(num);
    }

    @Override
    public List<Product> printTypeProductHot(int num) {
        return productDAO.printTypeProductHot(num);
    }

    public Map<String, Product> getAll(){
        return productDAO.getAll();
    }

    public Product getItem(String id){
        return ProductDAO.getInstance().getItem(id);
    }

    public boolean deleteItem(String id){
        return productDAO.deleteItem(id) == 1;
    }

}
