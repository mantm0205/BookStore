package BookStore.Controller.Shop;

import BookStore.utils.SessionUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveSessionController", urlPatterns = "/Trangchu")
public class ShopRemoveSessionController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
            HttpSession session = request.getSession();
            String action = request.getParameter("action");
            if (action != null){
                SessionUtil.getInstance().removeValue(request,"cart");
                response.sendRedirect(request.getContextPath() + "/TrangChu");
            }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
