package BookStore.Controller.Admin;

import BookStore.Dao.impl.AProductDAO;
import BookStore.Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", value = "/admin-product")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //        get data tu dao
        AProductDAO dao = new AProductDAO();
        List<Product> list1 = dao.getAllProduct();
//        set data cho jsp
        request.setAttribute("list1",list1);
//        phan trang | get tong so sach
        int page, numperpage = 6;
        int size = list1.size();
        int num = (size%6 == 0 ?(size/6):((size/6))+1);
        String xpage = request.getParameter("page");
        if(xpage == null){
            page=1;
        }else
        {
            page=Integer.parseInt(xpage);
        }
        int start,end;
        start = (page-1)*numperpage;
        end=Math.min(page*numperpage,size);
        List<Product> list = dao.getListPage(list1,start,end);
        request.setAttribute("data",list);
        request.setAttribute("page",page);
        request.setAttribute("num",num);


        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/product.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
