package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IAddressDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Address;

import java.text.SimpleDateFormat;
import java.util.Date;
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
        long output = insert(QUERIES.ADDRESS.CREATE, address.getId(), address.getIdAccount(), address.getProvinceCode(), address.getDistrictCode(), address.getWardCode(), address.getAddressDetails(), new SimpleDateFormat("yyyy-MM-dd").format(new Date()), new SimpleDateFormat("yyyy-MM-dd").format(new Date()), address.getCreatedBy(), address.getCreatedBy());
        return output;
    }

    @Override
    public Long updateItem(Address address) {
        long output = update(QUERIES.ADDRESS.UPDATE, new SimpleDateFormat("yyyy-MM-dd").format(new Date()), address.getModifiedBy(), address.getId());
        return output;
    }
}
