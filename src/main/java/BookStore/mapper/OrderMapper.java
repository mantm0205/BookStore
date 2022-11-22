package BookStore.mapper;

import BookStore.Model.Order;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderMapper implements  RowMapper<Order> {
    @Override
    public Order mapRow(ResultSet rs) {
        Order order = new Order();
        try {
            order.setId(rs.getInt("id"));
            order.setCart_id(rs.getInt("cart_id"));
            order.setProduct_id(rs.getInt("product_id"));
            order.setUser_id(rs.getInt("user_id"));
            order.setQuantity(rs.getInt("quantity"));
            order.setPrice(rs.getDouble("price"));
            order.setContent(rs.getString("content"));
            order.setDate(rs.getDate("date"));
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }


        return order;
    }

}
