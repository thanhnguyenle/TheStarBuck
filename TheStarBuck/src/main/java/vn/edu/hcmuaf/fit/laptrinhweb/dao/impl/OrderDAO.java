package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IOrderDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.impl.OrderMapper;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Orders;

import java.text.SimpleDateFormat;
import java.util.Date;
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
        List<Orders> output = query(QUERIES.ORDER.GET_LIST, new OrderMapper());
        return output;
    }

    @Override
    public Long save(Orders orders) {
        if(orders.getId().equals("")){
            return addItem(orders);
        }
        return updateItem(orders);
    }

    @Override
    public Long deleteItem(String id) {
        return null;
    }

    @Override
    public Orders getItem(String id) {
        List<Orders> list = query(QUERIES.ORDER.GET_ITEM_BYID, new OrderMapper(), id);
        Orders output = list.get(0);
        return output;
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
        long output = update(QUERIES.ORDER.UPDATE, orders.getStatus(), new SimpleDateFormat("yyyy-MM-dd").format(new Date()), orders.getModifiedBy(), orders.getId());
        return output;
    }
}
