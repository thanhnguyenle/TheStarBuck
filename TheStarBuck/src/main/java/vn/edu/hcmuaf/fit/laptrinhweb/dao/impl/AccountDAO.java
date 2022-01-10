package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IAccountDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.impl.DBConnection;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.impl.AccountMapper;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;

import javax.xml.bind.DatatypeConverter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AccountDAO extends AbstractDAO<Account> implements IAccountDAO {
    private static AccountDAO instance;
    //private DBConnection dbConnection = DBConnection.getInstance();
    

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
        int active = 0;
        active = account.isActive() ?  1 : 0;
        long number =
                insert(QUERIES.ACCOUNT.CREATE, account.getId(),account.getUsername(), account.getFullname(), active, account.getPhoneNumber(), account.getEmail(), new SimpleDateFormat("yyyy-MM-dd").format(new Date()), account.getPassword(), account.getAvatar(), account.getAddressId(), account.getAboutMe(), "", new SimpleDateFormat("yyyy-MM-dd").format(new Date()), account.getGroupId(), new SimpleDateFormat("yyyy-MM-dd").format(new Date()), new SimpleDateFormat("yyyy-MM-dd").format(new Date()), account.getCreatedBy(), account.getCreatedBy());
        return number;
    }

    public Long editAd(Account account){
        int active = 0;
        active = account.isActive() ?  1 : 0;
        long number =
                update(QUERIES.ACCOUNT.UPDATE, active, new SimpleDateFormat("yyyy-MM-dd").format(account.getLastLogin()) ,account.getGroupId(), new SimpleDateFormat("yyyy-MM-dd").format(new Date()), "ADMIN", account.getId());
        return number;
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
        Connection connection = DBConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(QUERIES.ACCOUNT.GET_ITEM_BYUSERNAME);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            output = rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnection.releaseConnection(connection);
        }
        return output;
    }

    public boolean register(String username, String email, String password) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(password.getBytes());
        byte[] digest = md.digest();
        password = DatatypeConverter.printHexBinary(digest).toUpperCase();
        long number =
        insert(QUERIES.ACCOUNT.CREATE, "",username, "", 1, "123", email, new SimpleDateFormat("yyyy-MM-dd").format(new Date()), password, "", "", "", "", new SimpleDateFormat("yyyy-MM-dd").format(new Date()), "MEMBER", new SimpleDateFormat("yyyy-MM-dd").format(new Date()), new SimpleDateFormat("yyyy-MM-dd").format(new Date()), "NONE", "NONE");
        return number == 1;
    }

    public boolean checkUserEmail(String email){
        boolean output = false;
        Connection connection = DBConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(QUERIES.ACCOUNT.GET_ITEM_BYEMAIL);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            output = rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnection.releaseConnection(connection);
        }
        return output;
    }

    public Account getItem(String id){
        List<Account> list = query(QUERIES.ACCOUNT.GET_ITEM_BYID, new AccountMapper(), id);
        Account output = list.get(0);
        return output;
    }

    public Long deleteItem(String id){
        long output = delete(QUERIES.ACCOUNT.DELETE, id);
        return output;
    }
}
