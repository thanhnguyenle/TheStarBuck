package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IGenericDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.IRowMapper;

import java.util.ArrayList;
import java.util.List;

public class AbstractDAO_jdbi<T> implements IGenericDAO<T> {
    @Override
    public <T> List<T> query(String sql, IRowMapper<T> rowMapper, Object... parameter) {
        List<T> resutls = new ArrayList<T>();

        return null;
    }

    @Override
    public void update(String sql, Object... parameter) {

    }

    @Override
    public Long insert(String sql, Object... parameter) {
        return null;
    }
}
