package BookStore.Dao;

import BookStore.Model.Blog;

import java.util.List;

public interface IBlogDAO {
     List<Blog> getBlog();
     Blog getDetailBlog(String id);
     List<Blog> getPageBlog(List<Blog> list, int start,int end);
}
