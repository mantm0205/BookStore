package BookStore.Controller.Shop;

import BookStore.Model.*;
import BookStore.service.*;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/DetailsController")
public class DetailsController extends HttpServlet {
    @Inject
    IProductService productService;
    @Inject
    IPublisherService publisherService;
    @Inject
    ICategoryService categoryService;
    @Inject private IAuthorService authorService;
    @Inject private ISaleService saleService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String id = request.getParameter("pid");
        Product product = productService.getDetails(id);
        Category category = categoryService.getCategory(id);
        Publisher publisher = publisherService.getPublisherById(id);
        Author author = authorService.getAuthorById(id);
        Sale sale = saleService.getPercentId(id);



        request.setAttribute("details",product);
        request.setAttribute("cate",category);
        request.setAttribute("publis",publisher);
        request.setAttribute("author",author);
        request.setAttribute("sales",sale);
        request.getRequestDispatcher("/views/web/details.jsp").forward(request,response);

    }


}
