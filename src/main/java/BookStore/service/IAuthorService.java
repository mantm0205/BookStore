package BookStore.service;

import BookStore.Model.Author;

import java.util.List;

public interface IAuthorService {
    List<Author> getAllAuthor();
    Author getAuthorById(String id);
}
