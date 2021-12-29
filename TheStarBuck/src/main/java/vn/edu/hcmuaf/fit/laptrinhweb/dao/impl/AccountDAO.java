package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import com.mysql.cj.result.LocalDateTimeValueFactory;
import vn.edu.hcmuaf.fit.laptrinhweb.dao.IAccountDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.DBConnection;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
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
        Account user = null;
        Connection connection = dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(QUERIES.ACCOUNT.LOGIN);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                user = new Account();
                user.setId(rs.getString("id_ac"));
                user.setUsername(rs.getString("ac_username"));
                user.setFullname(rs.getString("ac_fullname"));
                user.setActive(rs.getBoolean("ac_active"));
                user.setPhoneNumber(rs.getString("ac_mobile"));
                user.setEmail(rs.getString("ac_email"));
                user.setEmailVerifiedAt(rs.getDate("ac_emailVerifiedAt"));
                user.setPassword(rs.getString("ac_password"));
                user.setAvatar(rs.getString("ac_avatar"));
                user.setAddressId(rs.getString("ac_addressId"));
                user.setAboutMe(rs.getString("ac_about"));
                user.setRememberToken(rs.getString("ac_rememberToken"));
                user.setLastLogin(rs.getDate("ac_lastLogin"));
                user.setGroupId(rs.getString("ac_groupId"));
                user.setCreatedDate(rs.getDate("createdDate"));
                user.setCreatedBy(rs.getString("createdBy"));
                user.setModifiedDate(rs.getDate("modifiedDate"));
                user.setModifiedBy(rs.getString("modifiedBy"));
            }
            if(user != null && user.getUsername().equals(username) && !rs.next()){
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
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

    public int register(){
        return 0;
    }
}
