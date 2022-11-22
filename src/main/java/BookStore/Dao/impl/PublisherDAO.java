package BookStore.Dao.impl;

import BookStore.Dao.IPublisherDAO;
import BookStore.Model.Product;
import BookStore.Model.Publisher;
import BookStore.mapper.PublisherMapper;

import java.util.List;

public class PublisherDAO extends AbstractDAO<Publisher> implements IPublisherDAO {
    @Override
    public List<Publisher> getAllPublisher() {
        String sql = "SELECT * FROM publisher";

        return query(sql,new PublisherMapper());
    }

    @Override
    public Publisher getPublisherById(String id) {
        String sql = "SELECT pub.* FROM publisher pub JOIN products p WHERE pub.id = p.id and p.id = ?;";
        return queryOne(sql,new PublisherMapper(),id);
    }
}
