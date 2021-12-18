package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IProductDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.impl.ProductMapper;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;

import java.util.List;

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
        return insert(sql,product.getId(),
                product.getName(),
                product.getIdCategory(),
                product.getIngredients(),
                product.getPrice(),
                product.getDiscount(),
                product.getQuantity(),
                product.isActive(),
                product.isHot(),
                product.getView(),
                product.getDescription(),
                product.getImage(),
                product.getDescriptionSeo(),
                product.getKeywordSeo(),
                product.getTitleSeo(),
                product.getNote(),
                product.getCreatedDate(),
                product.getModifiedDate(),
                product.getCreatedBy(),
                product.getModifiedBy());
    }
}
