package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.ICategoryDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Category;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;

import java.util.List;

public class CategoryDAO extends AbstractDAO<Category> implements ICategoryDAO {
    private static  CategoryDAO instance;

    private CategoryDAO(){

    }

    public static CategoryDAO getInstance(){
        if(instance == null){
            instance = new CategoryDAO();
        }
        return  instance;
    }

    @Override
    public List<Product> findAll() {
        return null;
    }

    @Override
    public Long save(Category category) {
        return null;
    }

    @Override
    public Long deleteItem(String id) {
        return null;
    }

    @Override
    public Long updateItem(String id) {
        return null;
    }

    @Override
    public Category getItem(String id) {
        return null;
    }
}
