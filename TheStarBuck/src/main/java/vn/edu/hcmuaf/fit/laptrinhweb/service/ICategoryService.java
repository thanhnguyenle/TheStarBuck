package vn.edu.hcmuaf.fit.laptrinhweb.service;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Category;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;

import java.util.List;

public interface ICategoryService {
    List<Product> findAll();
    Long save(Category category);
    Long deleteItem(String id);
    Long updateItem(String id);
    Category getItem(String id);
}
