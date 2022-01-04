package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import com.mysql.cj.result.LocalDateTimeValueFactory;
import vn.edu.hcmuaf.fit.laptrinhweb.dao.IAccountDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.DBConnection;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.impl.AccountMapper;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AccountDAO extends AbstractDAO<Account> implements IAccountDAO {
    private static AccountDAO instance;
    private DBConnection dbConnection = DBConnection.getInstance();
    

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
        if(account.getId().equals("")){
            return  registerAd(account);
        }
        return editAd(account);
    }

    public Long registerAd(Account account){
        return 0L;
    }

    public Long editAd(Account account){
        return 0L;
    }

    public Map<String, Account> getAll(){
        List<Account> list =  query(QUERIES.ACCOUNT.GET_LIST, new AccountMapper());
        Map<String, Account> output = new HashMap<>();
        for (Account acc: list) {
            output.put(acc.getId(), acc);
        }
        return output;
    }

    public Account login(String username, String password){
        List<Account> accountList = query(QUERIES.ACCOUNT.LOGIN,new AccountMapper(),username,password);
        if(accountList!=null&&accountList.size()==1) {
            return accountList.get(0);
        }
        return null;
    }

    public boolean checkUsername(String username){
        boolean output = false;
        Connection connection = dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(QUERIES.ACCOUNT.GET_ITEM_BYUSERNAME);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            output = rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return output;
    }

    public boolean register(String username, String email, String password){
        long number =
        insert(QUERIES.ACCOUNT.CREATE, "",username, "", 1, "123", email, new SimpleDateFormat("yyyy-MM-dd").format(new Date()), password, "", "", "", "", new SimpleDateFormat("yyyy-MM-dd").format(new Date()), "MEMBER", new SimpleDateFormat("yyyy-MM-dd").format(new Date()), new SimpleDateFormat("yyyy-MM-dd").format(new Date()), "NONE", "NONE");
        System.out.println(number);
        return number == 1;
    }

    public boolean checkUserEmail(String email){
        boolean output = false;
        Connection connection = dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(QUERIES.ACCOUNT.GET_ITEM_BYEMAIL);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            output = rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return output;
    }
}
