package vn.edu.hcmuaf.fit.laptrinhweb.dao;

import vn.edu.hcmuaf.fit.laptrinhweb.mapper.IRowMapper;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Product;

import java.util.List;

public interface IProductDAO extends IGenericDAO<Product> {
    List<Product> findAll();
    Long save(Product product);
}
