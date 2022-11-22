package BookStore.mapper;

import BookStore.Model.Info;
import BookStore.Model.Role;
import BookStore.Model.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<User>{
    @Override
    public User mapRow(ResultSet rs) {
        User user = new User();
        try {
            user.setId(rs.getInt("id"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setFullname(rs.getString("fullname"));
            user.setStatus(rs.getInt("status"));
            user.setEmail(rs.getString("email"));
            user.setAddress(rs.getString("address"));
            user.setSex(rs.getString("sex"));
            user.setDate(rs.getDate("date"));
            user.setPhone(rs.getString("phone"));

        } catch (SQLException e) {
                return null;
        }
        return user;
    }

}
