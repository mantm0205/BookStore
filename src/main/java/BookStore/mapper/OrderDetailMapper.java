package BookStore.mapper;

import BookStore.Model.Cart;
import BookStore.Model.Info;
import BookStore.Model.OrderDetails;
import BookStore.Model.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderDetailMapper implements RowMapper<OrderDetails>{
    @Override
    public OrderDetails mapRow(ResultSet rs) {
        OrderDetails order = new OrderDetails();
        try {
            order.setFullname(rs.getString("fullname"));
            order.setAddress(rs.getString("address"));
            order.setEmail(rs.getString("email"));
            order.setPhone(rs.getString("phone"));
            order.setNote(rs.getString("note"));
        } catch (SQLException e) {
            e.printStackTrace();

            return null;
        }


        return order;
    }
}
