package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IAddressDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Address;

import java.util.List;

public class AddressDAO extends AbstractDAO<Address> implements IAddressDAO {
   private static AddressDAO instance;

    private AddressDAO() {
    }

    public static AddressDAO getInstance(){
        if(instance == null)
            instance = new AddressDAO();
        return instance;
    }
    @Override
    public List<Address> findAll() {
        return null;
    }

    @Override
    public Long save(Address address) {
        if(address.getId().equals("")){
            return addItem(address);
        } else
            return updateItem(address);
    }

    @Override
    public Long addItem(Address address) {
        return null;
    }

    @Override
    public Long updateItem(Address address) {
        return null;
    }
}
