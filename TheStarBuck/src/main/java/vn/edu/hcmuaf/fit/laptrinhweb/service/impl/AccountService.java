package vn.edu.hcmuaf.fit.laptrinhweb.service.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.impl.AccountDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb.service.IAccountService;

import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
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

    public Map<String, Account> getAll(){
        return  AccountDAO.getInstance().getAll();
    }

    public Account login(String username, String password){
        return accountDAO.login(username, password);
    }

    public boolean checkUsername(String username){
        return accountDAO.checkUsername(username);
    }
    public boolean checkUserEmail(String email){
        return accountDAO.checkUserEmail(email);
    }

    public Map<String, Object> register(String username, String email, String password,String retypepassword) throws NoSuchAlgorithmException {
        Map<String, Object> output = new HashMap<>();
        if(!accountDAO.register(username, email, password)){
            if(checkUsername(username)){
                output.put("errorUsername", "Username is exist");
            }
            if(accountDAO.checkUserEmail(email)){
                output.put("errorEmail", "Email is used");
            }
            if(!retypepassword.equals(password)){
                output.put("errorPassword", "Retyped password is wrong");
            }

        }
        return output;
    }
    public Account getAcc(String id){
        return AccountDAO.getInstance().getItem(id);
    }

    public boolean deleteItem(String id){
        return accountDAO.deleteItem(id) == 1;
    }

    public boolean updateAuth(Account account){
        return accountDAO.editAuth(account);
    }

    public Map<String, Object> saveUserLoginbyFb_GG(String email,String name) throws NoSuchAlgorithmException {
        Map<String, Object> output = new HashMap<>();
        boolean isSaved = false;
        boolean register  =  accountDAO.register(email,name,name);
          if(!register) {
             if(accountDAO.checkUserEmail(email)){
                output.put("errorEmail", "Email is used");
             }
          }
          else{
              output.put("addAccount","Add successful");
          }
         return output;
    }
    public String loadAUserByEmailGG_FB(String email){
        if(accountDAO.checkUserEmail(email)){
            return email;
        }
        return null;
    }
}
