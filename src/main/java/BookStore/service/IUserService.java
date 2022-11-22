package BookStore.service;

import BookStore.Model.Info;
import BookStore.Model.User;

import java.util.List;

public interface IUserService {
    List<User> getAll();
    User findOneById(Integer id);

    User getUser(String username);
    User insert(User user);

    User register(User user);
    boolean update(User user);


    User getEmail(String email);
}
