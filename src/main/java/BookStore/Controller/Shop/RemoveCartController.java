package BookStore.Controller.Shop;

import BookStore.Model.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "RemoveCartController", urlPatterns = "/removeCart")
public class RemoveCartController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int productId = Integer.parseInt(request.getParameter("id"));

            HttpSession session = request.getSession();

            Cart cart = Cart.getCart(session);
            System.out.println("before: " + cart.size());

            cart.removeItem(productId);

            cart.commit(session);
            request.getRequestDispatcher("views/web/shoping-cart.jsp").forward(request, response);

        }catch (NumberFormatException e) {
            response.sendRedirect("/cart");
        }
    }
}
