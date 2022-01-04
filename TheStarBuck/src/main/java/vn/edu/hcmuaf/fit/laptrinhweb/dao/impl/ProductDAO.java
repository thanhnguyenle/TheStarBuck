package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IProductDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.impl.ProductMapper;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDAO extends AbstractDAO<Product> implements IProductDAO {
    private static ProductDAO instance;

    private ProductDAO() {
    }

    public static ProductDAO getInstance(){
        if(instance == null){
            instance = new ProductDAO();
        }
        return instance;
    }


    @Override
    public List<Product> findAll() {
        String sql = "";
        return query(sql,new ProductMapper());
    }

    @Override
    public Long save(Product product) {
        String sql = "INSERT INTO Product VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        return 0L;
    }

    public Map<String, Product> getAll(){
        List<Product> list = query(QUERIES.PRODUCT.GET_LIST, new ProductMapper());
        Map<String, Product> output = new HashMap<>();
        for (Product pro: list) {
            output.put(pro.getId(), pro);
        }
        return output;
    }
}
