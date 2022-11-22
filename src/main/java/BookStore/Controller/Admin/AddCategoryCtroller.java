package BookStore.Controller.Admin;

import BookStore.Dao.impl.ACategoryDAO;
import BookStore.Model.Category;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCategoryCtroller", value = "/admin-add-category")
public class AddCategoryCtroller extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/admin/add-category.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");

        ACategoryDAO dao = new ACategoryDAO();

       Category a = dao.checkCategory(id);

        if(a == null) {
            dao.insertCateroty(id, name);
//        load du lieu
            response.sendRedirect("admin-category");

        }
        else{
            request.setAttribute("mess","Mã danh mục không được trùng !");
            request.getRequestDispatcher("/views/admin/add-category.jsp").forward(request, response);
        }

    }
}
