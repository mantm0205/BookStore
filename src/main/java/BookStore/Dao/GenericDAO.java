package BookStore.Dao;

import BookStore.mapper.RowMapper;

import java.util.List;

public interface GenericDAO<T> {
    List<T> query(String sql, RowMapper<T> rowMapper, Object...parameters);
    T queryOne(String sql, RowMapper<T> rowMapper, Object[] parameters);
    Integer insert (String sql,Object...parameters);
    boolean update(String sql, Object...parameters);
    boolean delete(String sql, Object... parameters);
}
