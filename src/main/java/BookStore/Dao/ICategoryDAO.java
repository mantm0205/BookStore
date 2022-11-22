package BookStore.Dao;

import BookStore.Model.Category;

import java.util.List;

public interface ICategoryDAO {
    List<Category> getAllCategory();
    Category getCategory(String id);
}
