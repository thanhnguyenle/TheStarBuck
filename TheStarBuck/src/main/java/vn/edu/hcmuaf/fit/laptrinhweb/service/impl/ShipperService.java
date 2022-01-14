package vn.edu.hcmuaf.fit.laptrinhweb.service.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Shipper;
import vn.edu.hcmuaf.fit.laptrinhweb.service.IShipperService;

import java.util.List;

public class ShipperService implements IShipperService {
    private static ShipperService instance;
    private ShipperService(){}
    public static ShipperService getInstance(){
        if(instance == null){
            instance = new ShipperService();
        }
        return instance;
    }
    @Override
    public List<Shipper> findAll() {
        return null;
    }

    @Override
    public boolean save(Shipper shipper) {
        return false;
    }

    @Override
    public boolean deleteItem(String id) {
        return false;
    }

    @Override
    public Shipper getItem(String id) {
        return null;
    }
}
