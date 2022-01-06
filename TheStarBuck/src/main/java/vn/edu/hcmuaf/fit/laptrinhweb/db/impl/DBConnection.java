package vn.edu.hcmuaf.fit.laptrinhweb.db.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.db.IDBConnectionPool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static vn.edu.hcmuaf.fit.laptrinhweb.db.DBProperties.*;

public class DBConnection implements IDBConnectionPool {
    private static DBConnection dbConnection;
    private static final IDBConnectionPool dbPool = new DBConnectionPool();
    private DBConnection() {
    }

    public static DBConnection getInstance() {
        try {
            if (dbConnection == null || dbConnection.getConnection().isClosed()) {
                dbConnection = new DBConnection();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dbConnection;
    }

    public Connection getConnection() {
        return dbPool.getConnection();
    }

    @Override
    public boolean releaseConnection(Connection connection) {
        return dbPool.releaseConnection(connection);
    }

}
