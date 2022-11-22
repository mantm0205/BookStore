package BookStore.Controller.Admin;

import BookStore.Dao.impl.AAuthorDAO;
import BookStore.Dao.impl.APublisherDao;
import BookStore.Model.Author;
import BookStore.Model.Publisher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditAuthorController", value = "/admin-edit-author")
public class EditAuthorController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("sid");
        AAuthorDAO dao = new AAuthorDAO();
        Author s = dao.getAuthorById(id);
        request.setAttribute("st",s);

        request.getRequestDispatcher("/views/admin/edit-author.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        AAuthorDAO dao = new AAuthorDAO();
        dao.updateAuthor(id,name);
//        load du lieu
        response.sendRedirect("admin-author");
    }
}
