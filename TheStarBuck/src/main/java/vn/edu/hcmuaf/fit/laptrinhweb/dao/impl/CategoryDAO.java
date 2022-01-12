package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.ICategoryDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.impl.CategoryMapper;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Category;

import java.util.List;
import java.util.Map;

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
    public List<Category> findAll() {
        List<Category> output = query(QUERIES.CATEGORY.GET_LIST, new CategoryMapper());
        return output;
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

    @Override
    public Map<String, Category> getAll() {
        return null;
    }
}
