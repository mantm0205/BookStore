package BookStore.service.impl;


import BookStore.Dao.IOrderDAO;
import BookStore.Dao.IOrderDetailDAO;
import BookStore.Dao.impl.OrderDAO;
import BookStore.Dao.impl.OrderDetailDAO;
import BookStore.Model.Cart;
import BookStore.Model.Order;
import BookStore.Model.OrderDetails;
import BookStore.Model.User;
import BookStore.mapper.OrderDetailMapper;
import BookStore.service.IOrderDetailService;

import javax.inject.Inject;
import java.util.List;

public class OrderDetailService implements IOrderDetailService {

    @Inject
    private IOrderDetailDAO orderDetailDAO;
    @Inject
    private IOrderDAO orderDAO;
    @Override
    public List<OrderDetails> getAll() {
        return orderDetailDAO.getAll();
    }

    @Override
    public OrderDetails findOneById(Integer id) {
        return orderDetailDAO.findOneById(id);
//        String sql = "select * from info where id = ?";
//        return query(sql, new OrderDetailMapper(), id).get(0);
    }

    @Override
    public void insert(OrderDetails orderDetails, Cart cart) {
//        Integer id = orderDetailDAO.insert(orderDetails, cart);
        orderDetailDAO.insert(orderDetails, cart);
//        return findOneById(id);
//        Integer id = OrderDetailDAO.insert(orderDetails);
//        return findOneById(id);
    }

    @Override
    public List<Order> getOrder() {

        return orderDAO.getOrder();
    }

    @Override
    public OrderDetails Payment(OrderDetails orderDetails) {
        return orderDetailDAO.Payment(orderDetails);
    }

    public static void main(String[] args) {
        IOrderDetailDAO orderDetailDAO = new OrderDetailDAO();
        IOrderDAO orderDAO = new OrderDAO();
//        List<Order> order = orderDAO.getOrder();
//        for (Order p: order){
//            System.out.println(p);
//        }

    }
}
