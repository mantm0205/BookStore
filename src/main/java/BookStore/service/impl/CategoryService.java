package BookStore.service.impl;

import BookStore.Dao.ICategoryDAO;
import BookStore.Dao.impl.CategoryDAO;
import BookStore.Model.Category;
import BookStore.service.ICategoryService;

import javax.inject.Inject;
import java.util.List;

public class CategoryService implements ICategoryService {
    @Inject
    ICategoryDAO categoryDAO;
    @Override
    public List<Category> findAll() {
        return categoryDAO.getAllCategory();
    }

    @Override
    public Category getCategory(String cid) {
        return categoryDAO.getCategory(cid);
    }



}
