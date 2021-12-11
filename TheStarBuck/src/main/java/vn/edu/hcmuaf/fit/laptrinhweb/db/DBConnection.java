package vn.edu.hcmuaf.fit.laptrinhweb.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
    private static DBConnection dbConnection;
    private Connection connection;
    private static String DB_url ="jdbc:mysql://localhost:3306/mysql_database?useSSL=false";
    private static String DB_username = "root";
    private static String DB_password = "thanh1101";
    private DBConnection(){}
    public static DBConnection getInstance(){
        if(dbConnection==null) {
            dbConnection = new DBConnection();
        }
            return dbConnection;
    }
    private void connection() throws SQLException {
        if(connection==null||connection.isClosed()){
            connection = DriverManager.getConnection(DB_url,DB_username,DB_password);
        }
    }
    private boolean isConnection() throws SQLException {
        return (connection!=null&&!connection.isClosed());
    }

    public Statement getStatement(){
        try{
            if(isConnection()) connection();
            return connection.createStatement();
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }
    }
}
