package BookStore.Dao;

import BookStore.Model.Product;
import BookStore.Model.Publisher;

import java.util.List;

public interface IPublisherDAO {
    List<Publisher> getAllPublisher();
    Publisher getPublisherById(String id);
}
