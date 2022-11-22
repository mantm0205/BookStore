package BookStore.Controller.Admin;

import BookStore.Dao.impl.ACategoryDAO;
import BookStore.Dao.impl.ProductDAO;
import BookStore.Model.Category;
import BookStore.Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditCategory", value = "/admin-edit-category")
public class EditCategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("sid");
        ACategoryDAO dao = new ACategoryDAO();
        Category s = dao.getCategoryById(id);
        request.setAttribute("st",s);

        request.getRequestDispatcher("/views/admin/edit-category.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        ACategoryDAO dao = new ACategoryDAO();
        dao.updateCategory(id,name);
//        load du lieu
        response.sendRedirect("admin-category");
    }
}
