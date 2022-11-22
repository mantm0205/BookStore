package BookStore.service.impl;

import BookStore.Dao.IAuthorDAO;
import BookStore.Dao.impl.AuthorDAO;
import BookStore.Model.Author;
import BookStore.service.IAuthorService;

import javax.inject.Inject;
import java.util.List;

public class AuthorService implements IAuthorService {
    @Inject private IAuthorDAO authorDAO;
    @Override
    public List<Author> getAllAuthor() {
        return authorDAO.getAllAuthor();
    }

    @Override
    public Author getAuthorById(String id) {
        return authorDAO.getAuthorById(id);
    }

    public static void main(String[] args) {
        IAuthorDAO authorDAO = new AuthorDAO();
        Author author =  authorDAO.getAuthorById("2");
        System.out.println(author);
    }
}
