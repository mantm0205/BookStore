package BookStore.Controller.Shop;

import BookStore.Model.Blog;
import BookStore.service.IBlogService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/detailsBlog")
public class BlogDetailsControllner extends HttpServlet {
    @Inject
    IBlogService blogService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String blogId = request.getParameter("blogId");
        Blog blog = blogService.getDetailsBlog(blogId);


        request.setAttribute("blogdetails",blog);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/blog-details.jsp");
        rd.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
