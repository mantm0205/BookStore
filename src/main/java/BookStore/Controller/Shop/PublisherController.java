package BookStore.Controller.Shop;


import BookStore.Model.Category;
import BookStore.Model.Product;
import BookStore.Model.Publisher;
import BookStore.service.ICategoryService;
import BookStore.service.IProductService;
import BookStore.service.IPublisherService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/publisher")
public class PublisherController extends HttpServlet {
    @Inject
    private IPublisherService publisherService;
    @Inject
    private IProductService productService;
    @Inject
    private ICategoryService categoryService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String puid = request.getParameter("pid");
        List<Product> listpub = productService.getProductByPublisher(puid);
        int totalP = listpub.size();
        List<Publisher> listPu = publisherService.getAllPublisher();
        List<Category> listC = categoryService.findAll();
        Product product = productService.getLastProduct();
        int page, numberpage = 18;
        int size = listpub.size();
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
        List<Product> listPage = productService.getPageProduct(listpub,start,end);
        request.setAttribute("Page",listPage);
        request.setAttribute("lastP",product);
        request.setAttribute("listC",listC);
        request.setAttribute("list",listpub);
        request.setAttribute("listPu",listPu);
        request.setAttribute("num",num);
        request.setAttribute("totalProduct",totalP);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/shop.jsp");
        rd.forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

}
