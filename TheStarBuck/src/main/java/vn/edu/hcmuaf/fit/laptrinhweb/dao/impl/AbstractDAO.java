package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IGenericDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.DBConnection;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.IRowMapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;

public abstract class AbstractDAO<T> implements IGenericDAO<T> {
   private DBConnection dbConnection = DBConnection.getInstance();

    @Override
    public <T> List<T> query(String sql, IRowMapper<T> rowMapper, Object... parameter) {
        List<T> results = new ArrayList<>();

        // DECLARE
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        //Step1: Establishing a Connection
        connection = dbConnection.getConnection();

        if(connection != null) {
            try {
                //Step 2: Create a statement using connection object
                statement = connection.prepareStatement(sql);

                //set multiple parameter
                setParameter(statement,parameter);

                //Step 3: Execute the query or update query
                resultSet = statement.executeQuery();

                //Step 4: Process the ResutlSet object
                while(resultSet.next()){
                    results.add(rowMapper.mapRow(resultSet));
                }
                return results;
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }finally {
                try {
                    if (connection != null) connection.close();
                    if (statement != null) statement.close();
                    if (resultSet != null) resultSet.close();
                }catch(SQLException e){
                    return null;
                }
            }
        }
        return null;
    }

    @Override
    public void update(String sql, Object... parameter) {
        //OPEN CONNECTION
        Connection connection = null;
        PreparedStatement statement = null;

        //Step1: Establishing a Connection
        connection =dbConnection.getConnection();
        if(connection!=null){
            try{
                //turn off auto commit :
                //when throw 1 error, program will not update database
                connection.setAutoCommit(false);

                //Step 2: Create a statement using connection object
                statement = connection.prepareStatement(sql);

                //set multiple parameter
                setParameter(statement,parameter);

                //update
                statement.executeUpdate();

                //save to database
                connection.commit();

            }catch (SQLException e){
                if(connection!=null){
                    try{
                        connection.rollback();
                    }catch (SQLException e1){
                        e1.printStackTrace();
                    }
                }
            }finally {
                try {
                    if (connection != null) connection.close();
                    if (statement != null) statement.close();
                }catch(SQLException e){
                    e.printStackTrace();
                }
            }
        }
    }

    @Override
    public Long insert(String sql, Object... parameter) {
        //OPEN CONNECTION
        Connection connection = null;
        PreparedStatement statement = null;
        System.out.println("1");
        //Step1: Establishing a Connection
        connection =dbConnection.getConnection();
        if(connection!=null){
            try{
                //turn off auto commit :
                //when throw 1 error, program will not update database
                System.out.println("2");
//                connection.setAutoCommit(false);

                System.out.println("3");
                //Step 2: Create a statement using connection object
                statement = connection.prepareStatement(sql);

                System.out.println("4");
                //set multiple parameter
                setParameter(statement,parameter);

                System.out.println("5");
                //insert
                return (long) statement.executeUpdate();
//                System.out.println("------------" + output);
//
//                System.out.println("6");
//                //save to database
//                connection.commit();



            }catch (SQLException e){
                if(connection!=null){
                    try{
                        connection.rollback();
                    }catch (SQLException e1){
                        e1.printStackTrace();
                    }
                }
            }finally {
                try {
                    if (connection != null) connection.close();
                    if (statement != null) statement.close();
                }catch(SQLException e){
                    e.printStackTrace();
                }
            }
        }
        System.out.println("5");
      return 0L;
    }

    public void setParameter(PreparedStatement statement, Object... parameters) {
        try {
            for (int i = 0; i < parameters.length; i++) {
                Object parameter = parameters[i];
                int index = i + 1;
                if (parameter instanceof Long) {
                    statement.setLong(index, (Long) parameter);
                } else if (parameter instanceof String) {
                    statement.setString(index, (String) parameter);
                } else if (parameter instanceof Integer) {
                    statement.setInt(index, (Integer) parameter);
                }else if(parameter instanceof Date){
                    statement.setDate(index,(java.sql.Date) parameter);
                }else if(parameter instanceof Double){
                    statement.setDouble(index,(Double) parameter);
                } else if(parameter instanceof  Boolean){
                    statement.setBoolean(index, (Boolean) parameter);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
