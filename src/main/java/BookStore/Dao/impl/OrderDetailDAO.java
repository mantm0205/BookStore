package BookStore.Dao.impl;

import BookStore.Dao.IOrderDetailDAO;
import BookStore.Model.Cart;
import BookStore.Model.Order;
import BookStore.Model.OrderDetails;
import BookStore.Model.User;
import BookStore.config.ConnectionPool;
import BookStore.mapper.CartMapper;
import BookStore.mapper.OrderDetailMapper;
import BookStore.mapper.ProductMapper;
import BookStore.mapper.UserMapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class OrderDetailDAO extends AbstractDAO<OrderDetails> implements IOrderDetailDAO {

    @Override
    public OrderDetails findOneById(Integer id) {
        String sql = "select * from detail_order where id = ?";
        return query(sql, new OrderDetailMapper(), id).get(0);
    }

    @Override

    public OrderDetails getEnd(){
        String sql = "SELECT * FROM detail_order ORDER BY id DESC LIMIT 1;";
        return queryOne(sql,new OrderDetailMapper());
    }

    @Override
    public Integer insert(OrderDetails orderDetails, Cart cart) {
        StringBuilder sql = new StringBuilder("INSERT INTO detail_order " +
                "(fullname, address, phone, email, note, cart_id)");
        sql.append("VALUES (?,?,?,?,?,?,?,?,?,?) ");
        return insert(sql.toString(),
                orderDetails.getFullname(),
                orderDetails.getAddress(),
                orderDetails.getPhone(),
                orderDetails.getEmail(),
                orderDetails.getNote(),
                cart.getId());

    }

    @Override
    public List<OrderDetails> getAll() {
        String sql = "SELECT * FROM detail_cart ";
        Connection con = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            con = new ConnectionPool().Connection();
            pr = con.prepareStatement(sql);
            rs = pr.executeQuery();
            while (rs.next()){

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public OrderDetails Payment(OrderDetails orderDetails) {

//        String sql = "INSERT INTO detail_order (fullname, address, phone, email, note) VALUES (?,?,?,?,?)";
//       insert(sql,orderDetails.getFullname(),orderDetails.getAddress(),orderDetails.getEmail(),orderDetails.getPhone(),orderDetails.getNote());

        StringBuffer sql = new StringBuffer("INSERT INTO detail_order (fullname, address, phone, email, note, date) VALUES (?,?,?,?,?,NOW())");
        Connection con = null;
        PreparedStatement pr = null;
        try {
            con = new ConnectionPool().getConnection("insert");
            pr = con.prepareStatement(String.valueOf(sql));
            pr.setString(1, orderDetails.getFullname());
            pr.setString(2, orderDetails.getAddress());
            pr.setString(3, orderDetails.getPhone());
            pr.setString(4, orderDetails.getEmail());
            pr.setString(5, orderDetails.getNote());
            pr.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return getEnd();
//        return (OrderDetails) query("select * from detail_order where email = " + orderDetails.getEmail(), new OrderDetailMapper());
    }


}
