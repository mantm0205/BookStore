package BookStore.Controller.Admin;

import BookStore.Dao.impl.ACategoryDAO;
import BookStore.Dao.impl.APublisherDao;
import BookStore.Model.Category;
import BookStore.Model.Publisher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditPublisherController", value = "/admin-edit-publisher")
public class EditPublisherController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("sid");
       APublisherDao dao = new APublisherDao();
        Publisher s = dao.getPublisherById(id);
        request.setAttribute("st",s);

        request.getRequestDispatcher("/views/admin/edit-publisher.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        APublisherDao dao = new APublisherDao();
        dao.updatePublisher(id,name);
//        load du lieu
        response.sendRedirect("admin-publisher");
    }

}
