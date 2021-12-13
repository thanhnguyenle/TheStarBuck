package vn.edu.hcmuaf.fit.laptrinhweb.dao;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Address;

import java.util.List;

public interface IAddressDAO extends IGenericDAO<Address>{
    List<Address> findAll();
    Long save(Address address);
}
