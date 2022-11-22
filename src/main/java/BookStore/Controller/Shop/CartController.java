package BookStore.Controller.Shop;

import BookStore.Model.Cart;
import BookStore.Model.Item;
import BookStore.Model.Product;
import BookStore.Model.User;
import BookStore.service.ICartService;
import BookStore.service.IProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/cart")
public class CartController extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("views/web/shoping-cart.jsp");
        dispatcher.forward(request, response);


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        String action = request.getParameter("action");
        int productId = Integer.parseInt(request.getParameter("code"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        System.out.println(quantity);
        HttpSession session = request.getSession();
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (action.equalsIgnoreCase("update")) {
            Item item = cart.getItem1(productId);
            item.update(productId, quantity);
            session.setAttribute("cart", cart);
            request.getRequestDispatcher("views/web/shoping-cart.jsp").forward(request, response);
        }
//        doGet(request, response);
    }
}
