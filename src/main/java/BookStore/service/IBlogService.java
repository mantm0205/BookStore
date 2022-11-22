package BookStore.service;

import BookStore.Model.Blog;
import BookStore.Model.Product;

import java.util.List;

public interface IBlogService {
     List<Blog> getAllBlog();
     Blog getDetailsBlog(String id);
     List<Blog> getPageBlog(List<Blog> list, int start, int end);
}
