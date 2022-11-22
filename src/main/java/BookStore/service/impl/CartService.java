package BookStore.service.impl;

import BookStore.Dao.ICartDAO;
import BookStore.Dao.impl.CartDAO;
import BookStore.Model.Cart;
import BookStore.Model.Product;
import BookStore.Model.User;
import BookStore.service.ICartService;

import javax.inject.Inject;
import java.util.List;

public class CartService implements ICartService {

    @Inject
    private ICartDAO cartDAO;

    @Override
    public Cart findByCustomerId(Integer customerId) {
        Cart cart = cartDAO.findByCustomerId(customerId);
        return cart;
    }

    @Override
    public void insert(Cart cart, User user) {
//        Integer id = cartDAO.insert(cart);
//        return cartDAO.findById(id);
        cartDAO.insert(cart, user);
    }

    @Override
    public Cart getLastCart() {
        return cartDAO.getLastCart();
    }

    public static void main(String[] args) {
        CartDAO cd = new CartDAO();
//        cd.insert()

        List<Cart> c = (List<Cart>) cd.findByCustomerId(1);
        System.out.println(c);
    }

}
