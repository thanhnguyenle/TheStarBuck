package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IProductDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.impl.ProductMapper;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;

import java.text.SimpleDateFormat;
import java.util.Date;
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
        if(product.getId().equals("")){
            return addItem(product);
        }
        return updateItem(product);
    }

    public Long addItem(Product product){
        int active = product.isActive() ? 1 : 0;
        int hot = product.isHot() ? 1 : 0;
        System.out.println("======" + product.getImage());
        long output = insert(QUERIES.PRODUCT.CREATE, product.getId(), product.getName(), product.getIdCategory(), product.getIngredients(), product.getPrice(), product.getDiscount(), product.getQuantity(), active, hot, product.getView(), product.getDescription(), product.getImage(), product.getDescriptionSeo(), product.getKeywordSeo(), product.getTitleSeo(), product.getNote(), new SimpleDateFormat("yyyy-MM-dd").format(new Date()), new SimpleDateFormat("yyyy-MM-dd").format(new Date()), product.getCreatedBy(), product.getCreatedBy());
        return output;
    }

    public Long updateItem(Product product){
        int active = product.isActive() ? 1 : 0;
        int hot = product.isHot() ? 1 : 0;
        long output = insert(QUERIES.PRODUCT.UPDATE, product.getName(), product.getIdCategory(), product.getIngredients(), product.getPrice(), product.getDiscount(), product.getQuantity(), active, hot, product.getView(), product.getDescription(), product.getImage(), product.getDescriptionSeo(), product.getKeywordSeo(), product.getTitleSeo(), product.getNote(),  new SimpleDateFormat("yyyy-MM-dd").format(new Date()), product.getModifiedBy(), product.getId());
        return output;
    }

    public Map<String, Product> getAll(){
        List<Product> list = query(QUERIES.PRODUCT.GET_LIST, new ProductMapper());
        Map<String, Product> output = new HashMap<>();
        for (Product pro: list) {
            output.put(pro.getId(), pro);
        }
        return output;
    }

    public Product getItem(String id){
        List<Product> products = query(QUERIES.PRODUCT.GET_ITEM_BYID, new ProductMapper(), id);
        Product product = products.get(0);
        return product;
    }
}
