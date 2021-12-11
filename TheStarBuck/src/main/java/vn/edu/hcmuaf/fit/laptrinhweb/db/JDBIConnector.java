package vn.edu.hcmuaf.fit.laptrinhweb.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;

import static vn.edu.hcmuaf.fit.laptrinhweb.db.DBProperties.*;

public class JDBIConnector {
    private static Jdbi jdbi;

    private static void makeConnect(){
        MysqlDataSource dataSorce = new MysqlDataSource();
        dataSorce.setUrl("jdbc:mysql://"+getDbHost()+":"+getDbPort()+"/"+getDbName()+"?useSSL="+getDbUseSSL());
        dataSorce.setUser(getDbUsername());
        dataSorce.setPassword(getDbPassword());
        try{
            //Nen du lieu khi su dung
            dataSorce.setUseCompression(true);
            //Duy tri ket noi lien tuc
            dataSorce.setAutoReconnect(true);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            throw new RuntimeException(throwables);
        }
        //Establishing a Connection
        jdbi = Jdbi.create(dataSorce);
    }

    private JDBIConnector(){
    }

    public static Jdbi get(){
        if(jdbi == null) makeConnect();
        return jdbi;
    }
}
