package BookStore.Controller.Shop;

import BookStore.Model.Category;
import BookStore.Model.Product;
import BookStore.Model.Publisher;
import BookStore.service.ICategoryService;
import BookStore.service.IProductService;
import BookStore.service.IPublisherService;
import BookStore.service.ISearchService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/search")
public class SearchController extends HttpServlet {
    @Inject
    ISearchService searchService;
    @Inject
    ICategoryService categoryService;
    @Inject
    IPublisherService publisherService;
    @Inject
    IProductService productService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String keyword = request.getParameter("keyword");
        List<Category> listC = categoryService.findAll();
        List<Publisher> listPu = publisherService.getAllPublisher();
        Product product = productService.getLastProduct();
        if (keyword == null){
            keyword = "";
        }
        List<Product> list = searchService.search(keyword);
        int totalProduct = list.size();
        int page, numberpage = 18;
        int size = list.size();
        int num = (size % 18 == 0?(size/18): ((size/18))+ 1); // number page
        String xpage = request.getParameter("page");
        if (xpage == null){
            page = 1;
        }else {
            page = Integer.parseInt(xpage);
        }
        int start,end;
        start = (page-1) * numberpage;
        end = Math.min(page* numberpage,size);
        List<Product> listPage = productService.getPageProduct(list,start,end);

        request.setAttribute("listProduct",list);
        request.setAttribute("keyword",keyword);
        request.setAttribute("listC",listC);
        request.setAttribute("listPu",listPu);
        request.setAttribute("lastP",product);
        request.setAttribute("num",num);
        request.setAttribute("totalProduct",totalProduct);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/search.jsp");
        rd.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }
}
