package BookStore.Controller.Shop;

import BookStore.Model.Product;
import BookStore.Model.User;
import BookStore.service.IProductService;
import BookStore.service.impl.FavoriteService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/favourite")
public class FavouriteController extends HttpServlet {
    @Inject
    IProductService productService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("pid");
        HttpSession session = request.getSession();
        User user = new User();
        if (user != null){
            Product product = productService.getProductById(id);
        }

    }
}
