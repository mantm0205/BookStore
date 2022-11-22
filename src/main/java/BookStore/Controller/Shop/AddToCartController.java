package BookStore.Controller.Shop;

import BookStore.Model.Cart;
import BookStore.Model.Item;
import BookStore.Model.Order;
import BookStore.Model.Product;
import BookStore.service.ICartService;
import BookStore.service.IProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/add-to-cart")
public class AddToCartController extends HttpServlet {

    @Inject
    private IProductService productService;

    @Inject
    private ICartService cartService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        int quantity = 1;
        String id,pid;
        if(request.getParameter("bid") != null){
            id = request.getParameter("bid");
            Product product = productService.getProductById(id);
            if (product != null) {
                if (request.getParameter("quantity") != null) {
                    quantity = Integer.parseInt(request.getParameter("quantity"));

                }
                HttpSession session = request.getSession();
                if (session.getAttribute("cart") == null) {
                    Cart cart = new Cart();
//                    Order order = new Order();
                    List<Item> listItems = new ArrayList<Item>();
                    Item item = new Item();
                    item.setQuantity(quantity);
                    item.setProduct(product);
                    item.setPrice(product.getPrice());
                    listItems.add(item);

                    cart.setItems(listItems);
                    cart.setCustomerId(id);
                    System.out.println(cart.toString());
                    session.setAttribute("cart", cart);

                }else{
                    Cart cart = (Cart) session.getAttribute("cart");
                    List<Item> listItems = cart.getItems();
                    boolean check = false;
                    for (Item item : listItems){
                        if (item.getProduct().getId() == product.getId()){
                            item.setQuantity(item.getQuantity()+ quantity);
                            check = true;
                        }
                    }
                    if (check == false) {
                        Item item = new Item();
                        item.setQuantity(quantity);
                        item.setProduct(product);
                        item.setPrice(product.getPrice());
                        listItems.add(item);
                    }
                    session.setAttribute("cart", cart);
                }
                response.sendRedirect(request.getContextPath() + "/TrangChu");
            }else{
                response.sendRedirect(request.getContextPath() + "/TrangChu");
            }

        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
