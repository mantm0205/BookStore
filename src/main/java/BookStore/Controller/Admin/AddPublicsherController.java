package BookStore.Controller.Admin;

import BookStore.Dao.impl.ACategoryDAO;
import BookStore.Dao.impl.APublisherDao;
import BookStore.Model.Publisher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddPublicsherController", value = "/admin-add-publisher")
public class AddPublicsherController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/admin/add-publisher.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String publishername = request.getParameter("name");
        APublisherDao dao = new APublisherDao();

        Publisher a = dao.checkCategory(id);
        if(a == null) {
        dao.insertPublisher(id,publishername);
//        load du lieu
        response.sendRedirect("admin-publisher");
        }
        else{
            request.setAttribute("mess","Mã nhà xuất bản không được trùng !");
            request.getRequestDispatcher("/views/admin/add-publisher.jsp").forward(request, response);
        }
    }
}
