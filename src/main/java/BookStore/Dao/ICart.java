package BookStore.Dao;

import BookStore.Model.Cart;

public interface ICart {
    Cart findByCustomer(Integer customerId);


}
