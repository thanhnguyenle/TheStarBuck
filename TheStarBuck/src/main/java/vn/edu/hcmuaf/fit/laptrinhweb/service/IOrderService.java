package vn.edu.hcmuaf.fit.laptrinhweb.service;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Orders;

import java.util.List;

public interface IOrderService {
    List<Orders> findAll();
    boolean save(Orders orders);
    boolean deleteItem(String id);
    Orders getItem(String id);
}
