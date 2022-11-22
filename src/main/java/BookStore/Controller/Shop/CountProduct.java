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

@WebServlet(name = "CountProduct", value = "/CountProduct")
public class CountProduct extends HttpServlet {
    @Inject
    private IProductService productService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String filter = request.getParameter("type");

        List<Product> list = null;
        if (filter.equals("small")){
            list = productService.getPriceSmall();
        }else if( filter.equals("medium")){
            list = productService.getPriceMedium();
        }else if (filter.equals("large")){
            list = productService.getPriceLarge();
        }else if (filter.equals("new")){
            list = productService.getNewProduct();
        }else if (filter.equals("price")){
            list = productService.getProductByPrice();
        }else if (filter.equals("sale")){
            list = productService.getSaleProduct();
        }
        PrintWriter out = response.getWriter();
        response.setContentType("text/plain;charset=UTF-8");
        out.write(list.size()+"");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
