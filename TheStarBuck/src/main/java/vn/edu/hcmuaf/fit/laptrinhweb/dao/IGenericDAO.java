package vn.edu.hcmuaf.fit.laptrinhweb.dao;

import vn.edu.hcmuaf.fit.laptrinhweb.mapper.IRowMapper;

import java.util.List;

public interface IGenericDAO<T> {
    <T> List<T> query (String sql, IRowMapper<T> rowMapper, Object... parameter);
    Long update (String sql,Object... parameter);
    Long insert (String sql,Object... parameter);
}
