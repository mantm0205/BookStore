package BookStore.Controller.Admin;

import BookStore.Dao.impl.AAuthorDAO;
import BookStore.Dao.impl.APublisherDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteAuthorController", value = "/admin-delete-author")
public class DeleteAuthorController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        get sid tu jsp
        String id = request.getParameter("sid");

//        dua sid den dao
        AAuthorDAO dao = new AAuthorDAO();
        dao.deleteAuthor(id);

//        load lai trang danh sach
        response.sendRedirect("admin-author");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
