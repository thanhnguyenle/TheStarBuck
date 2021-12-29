package vn.edu.hcmuaf.fit.laptrinhweb.service.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.impl.AccountDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.service.IAccountService;

import java.util.List;

public class AccountService implements IAccountService {
    private AccountDAO accountDAO = AccountDAO.getInstance();
    private static AccountService instance;
    private AccountService() {
    }

    public static AccountService getInstance(){
        if(instance==null)
            instance = new AccountService();
        return instance;
    }

    @Override
    public List<Account> findAll() {
        return accountDAO.findAll();
    }

    @Override
    public Long save(Account account) {
        return accountDAO.save(account);
    }

    public Account login(String username, String password){
        return accountDAO.login(username, password);
    }

    public boolean checkUsername(String username){
        return accountDAO.checkUsername(username);
    }
}
