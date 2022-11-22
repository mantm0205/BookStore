package BookStore.Dao.impl;

import BookStore.Dao.ICartDAO;
import BookStore.Model.Cart;
import BookStore.Model.Product;
import BookStore.Model.User;
import BookStore.config.ConnectionPool;
import BookStore.mapper.CartMapper;
import BookStore.mapper.ProductMapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class CartDAO extends AbstractDAO<Cart> implements ICartDAO {

    @Override
    public Cart findByCustomerId(Integer customer_id) {
        String sql = "select * from cart where user_id = ?";
        List<Cart> list = query(sql, new CartMapper(), customer_id);
        return list.size() == 0 ? null : list.get(0);
    }

    @Override
    public Cart findById(Integer id) {
        String sql = "select * from detail_cart where id = ?";
        List<Cart> list = query(sql, new CartMapper(), id);
        return list.size() == 0 ? null : list.get(0);
    }

    public void insert(Cart cart, User user) {
        StringBuffer sql = new StringBuffer("INSERT INTO detail_cart(detail_cart.cart_id, detail_cart.product_id, detail_cart.user_id, detail_cart.quantity, detail_cart.price, detail_cart.date)\n" +
                "VALUES(1, ?, ?, ?, ?, NOW())");
        Connection con = null;
        PreparedStatement pr = null;
        try {
            con = new ConnectionPool().getConnection("insert");
            pr = con.prepareStatement(String.valueOf(sql));
            pr.setString(1, cart.getCustomerId());
            pr.setInt(2, user.getId());
            pr.setInt(3, cart.getItems().size());
            pr.setDouble(4, cart.getItems().get(cart.getId()).getPrice());
            pr.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public Cart getLastCart() {
        String sql = "SELECT * FROM detail_cart ORDER BY id DESC LIMIT 1;";
        return queryOne(sql,new CartMapper());
    }
}
