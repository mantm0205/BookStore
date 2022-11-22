package BookStore.Controller.Admin;

import BookStore.Dao.impl.AProductDAO;
import BookStore.Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchProductController", value = "/admin-search-product")
public class SearchProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("key");
        if (key==null){
            key="";
        }
        AProductDAO dao = new AProductDAO();
        List<Product> list1 = dao.searchByName(key);
        request.setAttribute("list1",list1);
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
        request.setAttribute("key",key);

        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/product.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
