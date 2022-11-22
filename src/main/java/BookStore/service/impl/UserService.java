package BookStore.service.impl;

import BookStore.Dao.IUserDAO;

import BookStore.Dao.impl.UserDAO;
import BookStore.Model.Info;
import BookStore.Model.User;
import BookStore.service.IUserService;

import javax.inject.Inject;
import java.util.List;


public class UserService implements IUserService {
    @Inject
    private IUserDAO userDAO;

    @Override
    public List<User> getAll() {
        return userDAO.getAll();
    }

    @Override
    public User findOneById(Integer id) {
        return userDAO.findOneById(id);
    }

    @Override
    public User getUser(String username) {
        return userDAO.getUser(username);
    }

    @Override
    public User getEmail(String email) {
        return userDAO.getEmail(email);
    }

    @Override
    public User insert(User user) {
        Integer id = userDAO.insert(user);
        return findOneById(id);
    }

    public User register(User user) {
        Integer id = userDAO.insert(user);
        return userDAO.getUser(id);
    }

    @Override
    public boolean update(User user) {
        return userDAO.update(user);
    }



}
