package BookStore.Controller.Shop;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/otp")
public class OtpController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("text/html;charset-UTF8");
    }
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int value = Integer.parseInt(request.getParameter("otp"));
        HttpSession httpSession = request.getSession();
        int otp = (int) httpSession.getAttribute("otp");
        if (value == otp){
            request.setAttribute("email",request.getParameter("email"));
            request.setAttribute("status","success");
            RequestDispatcher rd = request.getRequestDispatcher("views/web/changPass.jsp");
            rd.forward(request,response);
        }else{
            request.setAttribute("message","OTP sai");
            RequestDispatcher rd = request.getRequestDispatcher("views/web/otp.jsp");
            rd.forward(request,response);
        }
    }
}
