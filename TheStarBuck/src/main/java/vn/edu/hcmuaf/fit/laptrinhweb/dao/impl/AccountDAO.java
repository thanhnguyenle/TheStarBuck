package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IAccountDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;

import java.util.List;

public class AccountDAO extends AbstractDAO<Account> implements IAccountDAO {
    private static AccountDAO instance;

    private AccountDAO() {
    }

    public static AccountDAO getInstance(){
        if(instance == null)
            instance = new AccountDAO();
        return instance;
    }

    @Override
    public List<Account> findAll() {
        return null;
    }

    @Override
    public Long save(Account account) {
        return null;
    }

    public Account login(String username, String password){
        Account user = null;
        return user;
    }

    public int register(){
        return 0;
    }
}
