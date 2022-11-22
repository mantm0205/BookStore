package BookStore.service.impl;

import BookStore.Dao.IBlogDAO;
import BookStore.Dao.impl.BlogDAO;
import BookStore.Model.Blog;
import BookStore.service.IBlogService;

import javax.inject.Inject;
import java.util.List;

public class BlogService implements IBlogService {
    @Inject
    IBlogDAO blogDAO;
    @Override
    public List<Blog> getAllBlog() {

        return blogDAO.getBlog();
    }

    @Override
    public Blog getDetailsBlog(String id) {
        return blogDAO.getDetailBlog(id);
    }

    @Override
    public List<Blog> getPageBlog(List<Blog> list, int start, int end) {
        return blogDAO.getPageBlog(list,start,end);
    }

    public static void main(String[] args) {
        BlogDAO blogDAO = new BlogDAO();
//        List<Blog> list = blogDAO.getBlog();
//        for (Blog b:list) {
//            System.out.println(b);
//        }
        System.out.println(blogDAO.getDetailBlog("3"));
    }
}
