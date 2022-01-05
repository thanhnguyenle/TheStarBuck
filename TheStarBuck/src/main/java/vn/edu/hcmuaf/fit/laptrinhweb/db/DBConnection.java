package vn.edu.hcmuaf.fit.laptrinhweb.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static vn.edu.hcmuaf.fit.laptrinhweb.db.DBProperties.*;

public class DBConnection {
    private static DBConnection dbConnection;

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

}
