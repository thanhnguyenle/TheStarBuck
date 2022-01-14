package vn.edu.hcmuaf.fit.laptrinhweb.dao;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Shipper;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Topping;

import java.util.List;
import java.util.Map;

public interface IShipperDAO extends  IGenericDAO<Shipper> {
    List<Shipper> findAll();
    Long save(Shipper shipper);
    Long deleteItem(String id);
    Topping getItem(String id);
    Map<String, Shipper> getAll();
    Long addItem(Shipper shipper);
    Long updateItem(Shipper shipper);
}
