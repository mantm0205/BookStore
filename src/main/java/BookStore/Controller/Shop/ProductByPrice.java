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
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/price")
public class ProductByPrice extends HttpServlet {
    @Inject
    private IProductService productService;
    @Inject
    ICategoryService categoryService;
    @Inject
    IPublisherService publisherService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String filter = request.getParameter("type");

            List<Product> list = null;
            if (filter.equals("small")){
                list = productService.getPriceSmall();
            }else if( filter.equals("medium")){
                list = productService.getPriceMedium();
            }else{
                list = productService.getPriceLarge();
            }
            PrintWriter out = response.getWriter();
            response.setContentType("text/plain;charset=UTF-8");
        for (Product p: list) {
            out.write(
              "             <div class=\"col-lg-4 col-md-6 col-sm-6\">\n" +
                      "                        <div class=\"product__item\">\n" +
                      "                            <div class=\"product__item__pic set-bg\" data-setbg=\""+p.getImg()+"\">\n" +
                      "                                <img src=\""+p.getImg()+"\" alt=\"\" style=\"cursor: pointer\">\n" +
                      "                                <ul class=\"product__item__pic__hover\">\n" +
                      "                                     \n" +
                      "                                    <li><a href=\"#\"><i class=\"fa fa-heart\"></i></a></li>\n" +
                      "                                    <li><a href=\"#\"><i class=\"fa fa-retweet\"></i></a></li>\n" +
                      "                                    <li><a href=\"add-to-cart?bid="+p.getId()+"muasp&txtmasp="+p.getId()+"\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n" +
                      "                                </ul>\n" +
                      "                            </div>\n" +
                      "                            <div class=\"product__item__text\">\n" +
                      "                                <h6><a href=\"DetailsController?pid="+p.getId()+"\">"+p.getName()+"</a></h6>\n" +
                      "                                <h5>"+p.getPrice() +" VND</h5>\n" +
                      "                            </div>\n" +
                      "                        </div>\n" +
                      "                    </div>"
            );
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }
}
