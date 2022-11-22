package BookStore.Controller.Shop;

import BookStore.Model.Product;
import BookStore.Model.Sale;
import BookStore.service.IProductService;
import BookStore.service.ISaleService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns = "/sale")
public class SaleProductController extends HttpServlet {
    @Inject
    IProductService productService;
    @Inject
    ISaleService saleService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String saleId = request.getParameter("saleid");
        List<Sale> lSale = saleService.getAllSale();
        List<Product> listSale = productService.getSaleProduct();
        Sale sale = saleService.getSaleById2();

        request.setAttribute("percent",lSale);
        request.setAttribute("SaleProduct",listSale);
        request.setAttribute("proSale",sale);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/index.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }
}
