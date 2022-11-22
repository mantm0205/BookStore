package BookStore.Dao.impl;

import BookStore.Dao.IAuthorDAO;
import BookStore.Model.Author;
import BookStore.mapper.AuthorMapper;

import java.util.List;

public class AuthorDAO extends AbstractDAO<Author> implements IAuthorDAO {
    @Override
    public List<Author> getAllAuthor() {
        String sql = "SELECT * FROM author";
        return query(sql,new AuthorMapper());
    }

    @Override
    public Author getAuthorById(String id) {
        String sql = "SELECT au.* FROM author au JOIN products p WHERE au.id = p.author_id and p.author_id = ?;";
        return queryOne(sql,new AuthorMapper(),id);
    }
}
