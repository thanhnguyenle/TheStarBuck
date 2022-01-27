package vn.edu.hcmuaf.fit.laptrinhweb.service;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Slide;

import java.util.List;

public interface IProductService {
    List<Product> findAll();
    Long save(Product product);
    List<Product> printTypeProductLatest(int num);
}
