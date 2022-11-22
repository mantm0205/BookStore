package BookStore.Controller.Shop;

import BookStore.Model.Blog;
import BookStore.Model.Product;
import BookStore.service.IBlogService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/blog")
public class BlogController extends HttpServlet {
    @Inject
    IBlogService blogService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Blog> listBlog = blogService.getAllBlog();
        int page, numberpage = 3;
        int size = listBlog.size();
        int num = (size % 3 == 0?(size/3): ((size/3))+ 1); // number page
        String xpage = request.getParameter("page");
        if (xpage == null){
            page = 1;
        }else {
            page = Integer.parseInt(xpage);
        }
        int start,end;
        start = (page-1) * numberpage;
        end = Math.min(page* numberpage,size);
        List<Blog> listPage = blogService.getPageBlog(listBlog,start,end);
        request.setAttribute("listBlog",listBlog);
        request.setAttribute("Page",listPage);
        request.setAttribute("num",num);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/blog.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
