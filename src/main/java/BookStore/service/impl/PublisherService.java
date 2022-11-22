package BookStore.service.impl;

import BookStore.Dao.IPublisherDAO;
import BookStore.Dao.impl.PublisherDAO;
import BookStore.Model.Publisher;
import BookStore.service.IPublisherService;

import javax.inject.Inject;
import java.util.List;

public class PublisherService implements IPublisherService {
    @Inject
    IPublisherDAO publisherDAO;
    @Override
    public List<Publisher> getAllPublisher() {

        return publisherDAO.getAllPublisher();
    }

    @Override
    public Publisher getPublisherById(String  id) {
        return publisherDAO.getPublisherById(id);
    }

    public static void main(String[] args) {
        PublisherDAO publisherDAO = new PublisherDAO();
        Publisher publisher = publisherDAO.getPublisherById("2");
        System.out.println(publisher);
        List<Publisher> list = publisherDAO.getAllPublisher();
//        for (Publisher pub : list){
//            System.out.println(pub);
//        }
    }
}
