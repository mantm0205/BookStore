package BookStore.service;

import BookStore.Model.Cart;
import BookStore.Model.User;

public interface ICartService {
    Cart findByCustomerId(Integer customerId);
    void insert(Cart cart, User user);
    Cart getLastCart();

}
