package BookStore.Controller.Admin;

import BookStore.Dao.impl.AAuthorDAO;
import BookStore.Dao.impl.ACategoryDAO;
import BookStore.Model.Author;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddAuthorController", value = "/admin-add-author")
public class AddAuthorController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/admin/add-author.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        AAuthorDAO dao = new AAuthorDAO();

        Author a= dao.checkAuthor(id);
        if(a == null) {
        dao.insertAuthor(id,name);
//        load du lieu
        response.sendRedirect("admin-author");
        }
        else{
            request.setAttribute("mess","Mã sản phẩm không được trùng !");
            request.getRequestDispatcher("/views/admin/add-author.jsp").forward(request, response);
        }

    }
}
