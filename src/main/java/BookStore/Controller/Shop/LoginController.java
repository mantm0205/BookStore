package BookStore.Controller.Shop;

import BookStore.Dao.IUserDAO;
import BookStore.Model.Category;
import BookStore.Model.User;
import BookStore.service.ICategoryService;
import BookStore.service.IUserService;
import BookStore.utils.EncryptUtil;
import BookStore.utils.SessionUtil;


import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginController", value = "/Dang-nhap")
public class LoginController extends HttpServlet {

    @Inject
    private IUserService userService;

    @Inject
    private ICategoryService categoryService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> listC = categoryService.findAll();
        request.setAttribute("listC",listC);
        String action = request.getParameter("action");
        if (action == null) {
            request.getRequestDispatcher("views/web/login.jsp").forward(request, response);
        } else if (action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getRequestURI());
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String pass = EncryptUtil.encryptMD5(password);
        User user = userService.getUser(username);
        if (user != null) {

            if (user.getPassword().equals(password) || user.getPassword().equals(pass)){//user.getPassword().equals(password)
                if (user.getStatus() == 0){
                    HttpSession ss = request.getSession();
                    ss.setAttribute("USERMODEL", user);
                    response.sendRedirect(request.getContextPath() + "/TrangChu");
                }else if (user.getStatus() == 1){

                    response.sendRedirect(request.getContextPath() + "/admin-home");
                }

            } else {
                request.setAttribute("username", username);
                request.setAttribute("pwd-err", "Mật khẩu không chính xác");
                request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("uname-err", "Tài khoản không tồn tại");
            request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);
        }

//        request.setAttribute("pwd-captchar", "Captcha không chính xác");
//        request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);

    }
}
