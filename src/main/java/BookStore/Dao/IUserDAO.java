package BookStore.Dao;

import BookStore.Model.User;

import java.util.List;

public interface IUserDAO extends GenericDAO<User> {
    List<User> getAll();
    User findOneById(Integer id);

    User getUser(String username);

    Integer insert(User user);

    User getUser(Integer id);
    boolean update(User user);

    User getEmail(String email);
}
