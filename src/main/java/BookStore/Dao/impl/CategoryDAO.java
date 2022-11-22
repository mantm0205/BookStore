package BookStore.Dao.impl;

import BookStore.Dao.ICategoryDAO;
import BookStore.Model.Category;
import BookStore.mapper.CategoryMapper;

import java.util.List;

public class CategoryDAO extends AbstractDAO<Category> implements ICategoryDAO{

    public List<Category> getAllCategory(){
        String sql = "SELECT * FROM category";
        return query(sql,new CategoryMapper());
    }

    @Override
    public Category getCategory(String cid) {
        String sql = "SELECT cate.* FROM category cate JOIN products p WHERE cate.id = p.category_id and p.id = ?";
        return queryOne(sql,new CategoryMapper(),cid);
    }


}
