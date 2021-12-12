package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IGenericDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.DBConnection;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.IRowMapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public abstract class AbstractDAO<T> implements IGenericDAO<T> {
    @Override
    public <T> List<T> query(String sql, IRowMapper<T> rowMapper, Object... parameter) {
        List<T> results = new ArrayList<>();

        // DECLARE
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        //Step1: Establishing a Connection
        connection = DBConnection.getInstance().getConnection();

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

    }

    @Override
    public Long insert(String sql, Object... parameter) {
        return null;
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
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
