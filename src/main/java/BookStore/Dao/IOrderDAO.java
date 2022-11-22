package BookStore.Dao;

import BookStore.Model.Order;

import java.util.List;

public interface IOrderDAO {
    List<Order> getOrder();
}
