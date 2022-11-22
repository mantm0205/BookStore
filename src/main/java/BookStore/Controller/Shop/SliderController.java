package BookStore.Controller.Shop;

import BookStore.Model.Slider;
import BookStore.service.IProductService;
import BookStore.service.ISliderService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/slider")
public class SliderController extends HttpServlet {
    @Inject
    ISliderService sliderService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Slider slider = sliderService.getSlide();

        request.setAttribute("slider",slider);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/index.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
