package BookStore.Controller.Admin;

import BookStore.Dao.impl.ACategoryDAO;
import BookStore.Dao.impl.AProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteCategoryController", value = "/deleteCategory")
public class DeleteCategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        get sid tu jsp
        String id = request.getParameter("sid");

//        dua sid den dao
        ACategoryDAO dao = new ACategoryDAO();
        dao.deleteCategory(id);

//        load lai trang danh sach
        response.sendRedirect("admin-category");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
