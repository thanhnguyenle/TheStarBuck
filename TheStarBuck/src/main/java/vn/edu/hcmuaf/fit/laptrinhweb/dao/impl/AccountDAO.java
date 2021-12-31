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
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

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
        return null;
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
        insert(QUERIES.ACCOUNT.CREATE, "ac0104",username, "", 1, "123", email, "", password, "", "", "", "", new java.sql.Date(2021,12,31), "MEMBER", new java.sql.Date(2021,12,31), new java.sql.Date(2021,12,31), "NONE", "NONE");
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
