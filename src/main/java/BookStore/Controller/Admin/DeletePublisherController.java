package BookStore.Controller.Admin;

import BookStore.Dao.impl.ACategoryDAO;
import BookStore.Dao.impl.APublisherDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeletePublisherController", value = "/admin-delete-publisher")
public class DeletePublisherController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        get sid tu jsp
        String id = request.getParameter("sid");

//        dua sid den dao
        APublisherDao dao = new APublisherDao();
        dao.deletePublisher(id);

//        load lai trang danh sach
        response.sendRedirect("admin-publisher");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
