package BookStore.service;

import BookStore.Model.Publisher;

import java.util.List;

public interface IPublisherService {
    List<Publisher> getAllPublisher();
    Publisher getPublisherById(String id);
}
