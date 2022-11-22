package BookStore.Controller.Admin;

import BookStore.Dao.impl.AProductDAO;
import BookStore.Dao.impl.AUserDAO;
import BookStore.Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddUserController", value = "/admin-add-user")
public class AddUserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/admin/add-user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

// get tu form
            String username = request.getParameter("username");
            String fullname = request.getParameter("fullname");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String sex = request.getParameter("sex");
            String phone = request.getParameter("phone");


// dua den daoductDAO
            AUserDAO dao = new AUserDAO();
            User a = dao.checkUser(username);
        if(a == null) {
            dao.insertUser(
                    username,fullname,password,email,address,sex,phone
            );

//        load du lieu
            response.sendRedirect("admin-user");

        }
        else{
            request.setAttribute("mess","Mã người dùng không được trùng !");
            request.getRequestDispatcher("/views/admin/add-user.jsp").forward(request, response);
        }
        }
    }
