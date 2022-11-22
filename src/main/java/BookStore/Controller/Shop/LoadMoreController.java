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

@WebServlet(urlPatterns = "/load")
public class LoadMoreController extends HttpServlet {
    @Inject
    IProductService productService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");
        String amount = request.getParameter("exits");
        int iamount = Integer.parseInt(amount);
        System.out.println(iamount);
        List<Product> loadmore = productService.getNextProduct(iamount);
        PrintWriter out = response.getWriter();
        for (Product p : loadmore){
            out.println(" <div class=\"loadp col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat\">\n" +
                    "                            <div class=\"featured__item\">\n" +
                    "                                <div class=\"featured__item__pic set-bg\" data-setbg=\"img/featured/feature-1.jpg\">\n" +
                    "                                    <img src=\""+ p.getImg()+"\">\n" +
                    "                                    <ul class=\"featured__item__pic__hover\">\n" +
                    "                                        <li><a href=\"#\"><i class=\"fa fa-heart\" style=\"margin: 10px\"></i></a></li>\n" +
                    "                                        <li><a href=\"#\"><i class=\"fa fa-retweet\" style=\"margin: 10px\"></i></a></li>\n" +
                    "                                        <li><a href=\"add-to-cart?bid="+p.getId()+"muasp&txtmasp="+p.getId()+"\"><i class=\"fa fa-shopping-cart\" style=\"margin: 10px\"></i></a></li>\n" +
                    "                                    </ul>\n" +
                    "                                </div>\n" +
                    "                                <div class=\"featured__item__text\">\n" +
                    "                                    <h6><a href=\"DetailsController?pid="+ p.getId() +"\">"+p.getName()+"</a></h6>\n" +
                    "                                    <h5>"+p.getPrice()+" VND</h5>\n" +
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "\n" +
                    "                        </div>");

        }
    }

    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                doGet(request,response);
        }
}
