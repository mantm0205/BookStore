package BookStore.Controller.Shop;

import BookStore.utils.SessionUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "RemoveSessionController", urlPatterns = "/Trangchu")
public class RemoveSessionController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();

            String action = request.getParameter("action");
            if (action != null) {
                SessionUtil.getInstance().removeValue(request, "cart");
                 response.sendRedirect(request.getContextPath() + "/TrangChu");
            }

        }

}
