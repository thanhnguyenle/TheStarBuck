package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import com.sun.org.apache.xpath.internal.operations.Or;
import vn.edu.hcmuaf.fit.laptrinhweb.dao.IOrderDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Orders;

import java.util.List;
import java.util.Map;

public class OrderDAO extends AbstractDAO<Orders> implements IOrderDAO {
    private static OrderDAO instance;
    private OrderDAO(){}
    public static OrderDAO getInstance(){
        if (instance == null){
            instance = new OrderDAO();
        }
        return instance;
    }
    @Override
    public List<Orders> findAll() {
        return null;
    }

    @Override
    public Long save(Orders orders) {
        return null;
    }

    @Override
    public Long deleteItem(String id) {
        return null;
    }

    @Override
    public Orders getItem(String id) {
        return null;
    }

    @Override
    public Map<String, Orders> getAll() {
        return null;
    }

    @Override
    public Long addItem(Orders orders) {
        return null;
    }

    @Override
    public Long updateItem(Orders orders) {
        return null;
    }
}
