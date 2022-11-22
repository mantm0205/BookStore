package BookStore.Controller.Admin;

import BookStore.Dao.impl.AProductDAO;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteProduct", value = "/deleteProduct")
public class DeleteProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        get sid tu jsp
        String id = request.getParameter("sid");

//        dua sid den dao
        AProductDAO dao = new AProductDAO();
        dao.deleteProduct(id);

//        load lai trang danh sach
        response.sendRedirect("admin-product");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
