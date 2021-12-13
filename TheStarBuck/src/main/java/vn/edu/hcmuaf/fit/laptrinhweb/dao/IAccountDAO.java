package vn.edu.hcmuaf.fit.laptrinhweb.dao;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;

import java.util.List;

public interface IAccountDAO extends IGenericDAO<Account>{
    List<Account> findAll();
    Long save(Account account);
}
