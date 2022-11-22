package BookStore.Controller.Admin;

import BookStore.Dao.impl.ACategoryDAO;
import BookStore.Dao.impl.CategoryDAO;
import BookStore.Model.Category;
import BookStore.Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryController", value = "/admin-category")
public class CategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        get du lieu tu dao
        ACategoryDAO dao = new ACategoryDAO();
        List<Category> list1 = dao.getAllCategory();
//        set du lieu len jsp
        request.setAttribute("list",list1);

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
        List<Category> list = dao.getListPage(list1,start,end);
        request.setAttribute("data",list);
        request.setAttribute("page",page);
        request.setAttribute("num",num);


        request.getRequestDispatcher("/views/admin/categories.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
