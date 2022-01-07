package vn.edu.hcmuaf.fit.laptrinhweb.db.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.db.DBProperties;
import vn.edu.hcmuaf.fit.laptrinhweb.db.IDBConnectionPool;

import java.sql.Connection;
import java.sql.SQLException;

public class DBConnection implements IDBConnectionPool {
    private static DBConnection dbConnection;
    private static final IDBConnectionPool dbPool = new DBConnectionPool(DBProperties.getDbMaxConnections());
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
