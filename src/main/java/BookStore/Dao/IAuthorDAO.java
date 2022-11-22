package BookStore.Dao;

import BookStore.Model.Author;

import java.util.List;

public interface IAuthorDAO {
    List<Author> getAllAuthor();
    Author getAuthorById(String id);
}
