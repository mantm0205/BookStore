package BookStore.Dao.impl;

import BookStore.Dao.IUserDAO;
import BookStore.Model.User;
import BookStore.mapper.UserMapper;


import java.util.List;

public class UserDAO extends AbstractDAO<User> implements IUserDAO {
    @Override
    public List<User> getAll() {
        String sql = "SELECT * FROM users";
        return query(sql,new UserMapper());
    }

    @Override
    public User findOneById(Integer id) {
        String sql = "select * from users where id = ?";
        return query(sql, new UserMapper(), id).get(0);
    }

    @Override
    public User getUser(String username) {
        String sql = "select * from users where username = ?";
        List<User> list = query(sql, new UserMapper(), username);
        return list.size() == 0 ? null : list.get(0);
    }

    @Override
    public User getEmail(String email) {
        String sql = "select * from users where email = ?";
        List<User> list = query(sql, new UserMapper(), email);
        return list.size() == 0 ? null : list.get(0);
    }

    @Override
    public Integer insert(User user) {
        StringBuilder sql = new StringBuilder("INSERT INTO users " +
                "(username,password,fullname,email,phone,address) ");
        sql.append("VALUES (?,?,?,?,?,?) ");
        return insert(sql.toString(),
                user.getUsername(),
                user.getPassword(),
                user.getFullname(),
                user.getEmail(),
//                user.getAddressid(),
//                user.getSex(),
                user.getPhone(),
                user.getAddress());
//                user.getBlogid()
    }

    @Override
    public User getUser(Integer id) {
        String sql = "SELECT * FROM users WHERE id = ?";
        return queryOne(sql,new UserMapper(),id);
    }

    @Override
    public boolean update(User user) {
        StringBuilder sql = new StringBuilder();
        sql.append("update users set ");
        sql.append("password = ?");
        sql.append("where email = ?");
        return update(sql.toString(),user.getPassword());
    }



}
