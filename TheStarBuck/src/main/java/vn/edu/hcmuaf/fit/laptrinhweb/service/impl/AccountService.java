package vn.edu.hcmuaf.fit.laptrinhweb.service.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.impl.AccountDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.service.IAccountService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    public Map<String, Object> register(String username, String email, String password, String retypePassword){
        Map<String, Object> output = new HashMap<>();
        if(!accountDAO.register(username, email, password, retypePassword)){
            if(checkUsername(username)){
                output.put("errorUsername", "Username is exist");
            }
            if(!password.equals(retypePassword)){
                output.put("errorPassword", "Retyped Password is wrong");
            }
            if(accountDAO.checkUserEmail(email)){
                output.put("errorEmail", "Email is used");
            }
        }
        return output;
    }
}
