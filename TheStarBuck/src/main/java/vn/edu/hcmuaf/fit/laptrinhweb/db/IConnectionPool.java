package vn.edu.hcmuaf.fit.laptrinhweb.db;

import java.sql.Connection;

public interface IConnectionPool {
    Connection getConnection();
    boolean releaseConnection(Connection connection);
}
