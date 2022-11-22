package BookStore.mapper;

import BookStore.Model.Author;

import java.sql.ResultSet;
import java.sql.SQLException;

public class AuthorMapper implements  RowMapper<Author>{

    @Override
    public Author mapRow(ResultSet rs) {
        Author author = new Author();
        try {
            author.setId(rs.getInt("id"));
            author.setAuthorname(rs.getString("name"));

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return author;
    }
}
