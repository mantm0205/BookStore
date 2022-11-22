package BookStore.Controller.Admin;

import BookStore.Dao.impl.*;
import BookStore.Model.Author;
import BookStore.Model.Category;
import BookStore.Model.Product;
import BookStore.Model.Publisher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EditProduct", value = "/admin-edit-product")
public class EditProductController extends HttpServlet {
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

        String id = request.getParameter("sid");
        ProductDAO dao = new ProductDAO();
        Product s = dao.getProductById(id);
        request.setAttribute("st",s);
        request.getRequestDispatcher("/views/admin/edit-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String authorid = request.getParameter("authorid");
        String categoryid = request.getParameter("categoryid");
        String publisherid = request.getParameter("publisherid");
        String img = request.getParameter("img");
        String quantity = request.getParameter("quantity");
        String description = request.getParameter("description");
        String price = request.getParameter("price");

        AProductDAO dao = new AProductDAO();
        dao.updateProduct(
                id,name,authorid,categoryid,publisherid,img,quantity,description,price
        );
        response.sendRedirect("admin-product");
    }
}
