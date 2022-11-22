package BookStore.Controller.Shop;

import BookStore.Dao.IOrderDetailDAO;
import BookStore.Model.*;
import BookStore.service.ICartService;
import BookStore.service.IOrderDetailService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "ActionBillController", urlPatterns = "/actionBill")
public class ActionBillController extends HttpServlet {
    @Inject
    private IOrderDetailService orderDetailService;

    @Inject
    private ICartService cartService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        String fullname = request.getParameter("fullname");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String note = request.getParameter("note");
        User user = (User) session.getAttribute("USERMODEL");
        OrderDetails order;
        Cart cart = (Cart) session.getAttribute("cart");

            if (user != null){
                order = new OrderDetails();
                order.setFullname(user.getFullname());

//                order.setAddress(user.getAddress());
                order.setEmail(user.getEmail());
                order.setPhone(phone);
                order.setNote(note);


                System.out.println("order của 1 " +order);

            }else {
                order = new OrderDetails();
                order.setFullname(fullname);
                order.setAddress(address);
                order.setEmail(email);
                order.setPhone(phone);
                order.setNote(note);
            }

            order.setAddress(address);
            System.out.println("order là gì: " + order);

        order =  orderDetailService.Payment(order);
        System.out.println("order là gì: " + order);
            session.setAttribute("bill", order);
            response.sendRedirect(request.getContextPath() + "/bill");
            request.setAttribute("err","không thể bỏ trống");

//        try {
//
//            Cart cart1 = cartService.getLastCart();
//            System.out.println("fasdf : " + cart.getId());
//            in = orderDetailService.insert(in, cart1);
//            System.out.println("hiển thị gì đây: " +in.toString());
//            request.getSession().setAttribute("cart", cart);
//            request.getSession().setAttribute("ORDERMODEL", in);
//            request.setAttribute("err","không thể bỏ trống");
//            request.setAttribute("fullname",user.getFullname());
//            request.setAttribute("email",user.getEmail());
//            request.setAttribute("phone",user.getPhone());
//            request.setAttribute("address",user.getAddress());
//            request.setAttribute("note",note);
//            response.sendRedirect(request.getContextPath() + "/TrangChu");
//
//        }catch (Exception e){
//            System.out.println("asdf");
//            response.sendRedirect(request.getContextPath() + "/checkout");
//        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request,response);
    }

}
