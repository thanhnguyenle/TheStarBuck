package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IShipperDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Shipper;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Topping;

import java.util.List;
import java.util.Map;

public class ShipperDAO extends  AbstractDAO<Shipper> implements IShipperDAO {
    private static ShipperDAO instance;
    private ShipperDAO(){}
    public static ShipperDAO getInstance(){
        if(instance == null){
            instance = new ShipperDAO();
        }
        return instance;
    }
    @Override
    public List<Shipper> findAll() {
        return null;
    }

    @Override
    public Long save(Shipper shipper) {
        return null;
    }

    @Override
    public Long deleteItem(String id) {
        return null;
    }

    @Override
    public Topping getItem(String id) {
        return null;
    }

    @Override
    public Map<String, Shipper> getAll() {
        return null;
    }

    @Override
    public Long addItem(Shipper shipper) {
        return null;
    }

    @Override
    public Long updateItem(Shipper shipper) {
        return null;
    }
}
