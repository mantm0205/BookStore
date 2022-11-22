package BookStore.Controller.Shop;

import BookStore.Model.Cart;
import BookStore.Model.OrderDetails;
import BookStore.Model.User;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "BillController", urlPatterns = "/bill")
public class BillController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        OrderDetails orderDetails = (OrderDetails) request.getSession().getAttribute("bill");
        Cart cart = (Cart) session.getAttribute("cart");
        User user = (User) session.getAttribute("USERMODEL") ;
        session.setAttribute("USERMODEL", user);
//        System.out.println("in ra gì đi" + orderDetails);
        session.setAttribute("bill", orderDetails);
//        session.setAttribute("cart", cart);
        session.removeAttribute("cart");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/bill.jsp");
        rd.forward(request,response);
    }

}
