package BookStore.Dao.impl;

import BookStore.Dao.IBlogDAO;
import BookStore.Model.Blog;
import BookStore.Model.Product;
import BookStore.mapper.BlogMapper;

import java.util.ArrayList;
import java.util.List;

public class BlogDAO extends AbstractDAO<Blog> implements IBlogDAO {
    @Override
    public List<Blog> getBlog() {
        String sql = "SELECT * FROM blog";
        return query(sql,new BlogMapper());
    }

    @Override
    public Blog getDetailBlog(String id) {
        String sql = "SELECT * FROM blog WHERE id = ?";
        return queryOne(sql,new BlogMapper(),id);
    }

    @Override
    public List<Blog> getPageBlog(List<Blog> list, int start, int end) {
        List<Blog> arr = new ArrayList<>();
        for (int i = start;i<end;i++){
            arr.add(list.get(i));
        }
        return arr;
    }
}
