package BookStore.Controller.Shop;

import BookStore.config.ConnectionPool;
import BookStore.utils.EncryptUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(urlPatterns = "/resetPass")
public class ChangePasswordController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                response.setContentType("text/html;charset=UTF-8");
                String newPassword = request.getParameter("password");
                String newConfirm = request.getParameter("confirm");
                HttpSession httpSession = request.getSession();
                RequestDispatcher rd = null;
                if (newPassword != null && newConfirm != null && newPassword.equals(newConfirm)){
                    try {
                        Connection connection = ConnectionPool.Connection();
                        PreparedStatement pre = connection.prepareStatement("update users set password = ? where email = ?");
                        pre.setString(1,EncryptUtil.encryptMD5(newPassword));
                        pre.setString(2, (String) httpSession.getAttribute("email"));
                        int row = pre.executeUpdate();
                        if (row > 0){
                            request.setAttribute("status","resetSuccess");
                            rd = request.getRequestDispatcher("views/web/login.jsp");
                        }else {
                            request.setAttribute("status","resetFailed");
                            rd = request.getRequestDispatcher("views/web/login.jsp");
                        }
                        rd.forward(request,response);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }


    }
}
