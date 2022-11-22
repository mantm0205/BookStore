package BookStore.Controller.Admin;

import BookStore.Dao.impl.AAuthorDAO;
import BookStore.Dao.impl.ACategoryDAO;
import BookStore.Dao.impl.AProductDAO;
import BookStore.Dao.impl.APublisherDao;
import BookStore.Model.Author;
import BookStore.Model.Category;
import BookStore.Model.Product;
import BookStore.Model.Publisher;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddProduct", value = "/admin-add-product")
public class AddProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        APublisherDao daoU = new APublisherDao();
        List<Publisher> listP = daoU.getAllPublisher();
        request.setAttribute("listP",listP);

        AAuthorDAO daoA = new AAuthorDAO();
        List<Author> listA = daoA.getAllAuthor();
        request.setAttribute("listA",listA);


        ACategoryDAO daoC = new ACategoryDAO();
        List<Category> listC = daoC.getAllCategory();
        request.setAttribute("listC",listC);

        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/add-product.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// get tu form
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String authorid = request.getParameter("authorid");
        String categoryid = request.getParameter("categoryid");
        String publisherid = request.getParameter("publisherid");
        String img = request.getParameter("img");
        String quantity = request.getParameter("quantity");
        String description = request.getParameter("description");
        String price = request.getParameter("price");


// dua den daoductDAO
        AProductDAO dao = new AProductDAO();
        Product a = dao.checkProduct(id);

        if(a == null) {
            dao.insertProduct(
                    id, name, authorid, categoryid, publisherid, img, quantity, description, price
            );
            response.sendRedirect("admin-product");
        }
        else{
            request.setAttribute("mess","Tên tài khoản không được trùng !");
          request.getRequestDispatcher("/views/admin/add-product.jsp").forward(request, response);
        }

    }
}
