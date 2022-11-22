package BookStore.Controller.Admin;

import BookStore.Dao.impl.AProductDAO;
import BookStore.Dao.impl.APublisherDao;
import BookStore.Dao.impl.AUserDAO;
import BookStore.Model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Admin-home", value = "/admin-home")
public class HomeAdminController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //        get data tu dao
        AProductDAO dao = new AProductDAO();
        List<Product> list1 = dao.getAllProduct();
        int countProduct = dao.countProduct();

        AUserDAO daoU = new AUserDAO();
        int countUser = daoU.countUser();

        APublisherDao daoP = new APublisherDao();
        int countPublisher = daoP.countPublisher();

//        set data cho jsp
        request.setAttribute("list1",list1);
//        phan trang | get tong so sach
        int page, numperpage = 10;
        int size = list1.size();
        int num = (size%10 == 0 ?(size/10):((size/10))+1);
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
        request.setAttribute("countProduct",countProduct);
        request.setAttribute("countPublisher",countPublisher);
        request.setAttribute("countUser",countUser);

        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/index.jsp");
        rd.forward(request, response);
    }

}
