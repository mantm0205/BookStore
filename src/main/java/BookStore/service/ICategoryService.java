package BookStore.service;

import BookStore.Model.Category;

import java.util.List;

public interface ICategoryService {
    List<Category> findAll();
    Category getCategory(String cid);

}
