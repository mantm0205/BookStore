package BookStore.mapper;

import BookStore.Model.Publisher;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PublisherMapper implements RowMapper<Publisher>{

    @Override
    public Publisher mapRow(ResultSet rs) {
        Publisher publisher = new Publisher();
        try {
            publisher.setId(rs.getInt("id"));
            publisher.setPublishername(rs.getString("name"));
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return publisher;
    }
}
