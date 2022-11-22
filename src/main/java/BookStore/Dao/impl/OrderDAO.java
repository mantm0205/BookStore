package BookStore.Dao.impl;

import BookStore.Dao.IOrderDAO;
import BookStore.Model.Order;
import BookStore.mapper.OrderMapper;

import java.util.List;

public class OrderDAO extends AbstractDAO<Order> implements IOrderDAO {
    @Override
    public List<Order> getOrder() {
        String sql = "SELECT * FROM detail_cart";
        return query(sql,new OrderMapper());
    }
}
