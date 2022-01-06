package vn.edu.hcmuaf.fit.laptrinhweb.db.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.db.IDBConnectionPool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static vn.edu.hcmuaf.fit.laptrinhweb.db.DBProperties.*;
import static vn.edu.hcmuaf.fit.laptrinhweb.db.DBProperties.getDbPassword;

public class DBConnectionPool implements IDBConnectionPool {

    @Override
    public Connection getConnection() {
        Connection connection = null;
        try {
            String url;
            Class.forName("com.mysql.cj.jdbc.Driver");
            url = "jdbc:mysql://" + getDbHost() + ":" + getDbPort() + "/" + getDbName() + "?useSSL=" + getDbUseSSL();
            connection = DriverManager.getConnection(url, getDbUsername(), getDbPassword());
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public boolean releaseConnection(Connection connection) {
        return false;
    }
}
