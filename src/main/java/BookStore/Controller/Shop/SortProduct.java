package BookStore.Controller.Shop;

import BookStore.Model.Product;
import BookStore.service.IProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "SortProduct", value = "/SortProduct")
public class SortProduct extends HttpServlet {
    @Inject
    IProductService productService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String filter = request.getParameter("type");
        List<Product> list = null;
        if (filter.equals("new")){
            list = productService.getNewProduct();
        }else if( filter.equals("price")){
            list = productService.getProductByPrice();
        }else if (filter.equals("sale")){
            list = productService.getSaleProduct();
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

    }
}
