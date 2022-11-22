package BookStore.service;

import BookStore.Model.Cart;
import BookStore.Model.Order;
import BookStore.Model.OrderDetails;
import BookStore.Model.User;

import java.util.List;

public interface IOrderDetailService {
    List<OrderDetails> getAll();
    OrderDetails findOneById(Integer id);
    void insert(OrderDetails orderDetails, Cart cart);
    List<Order> getOrder();
    OrderDetails Payment(OrderDetails orderDetails);
}
