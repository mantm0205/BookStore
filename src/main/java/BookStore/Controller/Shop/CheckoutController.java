package BookStore.Controller.Shop;

import BookStore.Model.Cart;
import BookStore.Model.User;
import BookStore.service.ICartService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "CheckoutController", urlPatterns = "/checkout")
public class CheckoutController extends HttpServlet {

    @Inject
    private ICartService cartService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("USERMODEL");
        System.out.println("ten gì đó: _" + user + " _");
        if (user!=null) {
            System.out.println("co zo day khong");


            Cart cart = (Cart) session.getAttribute("cart");
//            for (cart.getItems().)
//            System.out.println("ten gì đó: " + cart.getId());
//            System.out.println("gì đây:" + cart.getCustomerId());
//            System.out.println("bao nhieu:" + user.getId());
//            System.out.println("đô la:" + cart.getItems().get(cart.getId()).getPrice());
//            System.out.println("nhiêu:" + cart.getItems().get(cart.getId()).getQuantity());
//            System.out.println("gì:" + cart.getItems().ge);
//            System.out.println("ko biết là gì:" + cart.getItems().get(cart.getId()).getProduct().getId());
            cartService.insert(cart, user);
            request.setAttribute("cartDetail", cart);
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/checkout.jsp");
            rd.forward(request, response);
        }else {

            response.sendRedirect(request.getContextPath() + "/Dang-nhap");
        }

    }
}
