package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IAddressDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Address;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.impl.AddressMapper;
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
        List<Address> output = query(QUERIES.ADDRESS.GET_LIST, new AddressMapper());
        return output;
    }

    @Override
    public Long save(Address address) {
        return null;
    }

}
