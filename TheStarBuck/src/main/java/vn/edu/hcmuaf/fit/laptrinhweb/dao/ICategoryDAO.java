package vn.edu.hcmuaf.fit.laptrinhweb.dao;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Category;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;

import java.util.List;

public interface ICategoryDAO extends  IGenericDAO<Category>{
    List<Product> findAll();
    Long save(Category category);
    Long deleteItem(String id);
    Long updateItem(String id);
    Category getItem(String id);
}
