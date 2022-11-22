package BookStore.Controller.Shop;

import BookStore.Model.User;
import BookStore.service.IUserService;
import BookStore.utils.EncryptUtil;
import BookStore.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.security.Timestamp;
import java.util.Calendar;

@WebServlet(urlPatterns = "/dang-ky")
public class RegisterController extends HttpServlet {
    @Inject
    private IUserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String confirmPassword = request.getParameter("confirmPassword");
//        String sex = request.getParameter("sex");

//        if(username == null || username.equals("") ){
//
//            request.setAttribute("notyfi", "Thiếu tên đăng nhập");
//            request.getRequestDispatcher("/views/web/register.jsp").forward(request, response);
//        }else if(password.length() < 6){
//            request.setAttribute("notyfi", "Độ dài mật khẩu chưa đảm bảo");
//        }else if(!password.equals(confirmPassword)){
//            request.setAttribute("notyfi", "Mật khẩu nhập lại chưa khớp");
//        }else if(phone.length() <10){
//            request.setAttribute("notyfi", "nhập sai số điện thoại, tối thiểu 10 số");
//        }else if(!email.contains("@") && !email.contains(".")){
//            request.setAttribute("notyfi", "Địa chỉ Email chưa chính xác");
//        }
        User us = userService.getUser(username);
        User us1 = userService.getEmail(email);

        if (us1 == null && us == null) {

            User user = new User();

            password = EncryptUtil.encryptMD5(password);
            user.setUsername(username);
            user.setPassword(password);
            user.setFullname(fullname);
            user.setEmail(email);
            user.setPhone(phone);
            user.setAddress(address);
//            user.setSex(sex);
//            user.setStatus(1);
//            user.setBlogid(1);


            try {
                user = userService.insert(user);
                System.out.println(user.toString());
                request.getSession().setAttribute("USERMODEL", user);
            } catch (Exception e) {
                response.sendRedirect(request.getContextPath() + "/TrangChu");
            }
            response.sendRedirect(request.getContextPath() + "/TrangChu");
        } else {
            request.setAttribute("username", username);
            request.setAttribute("fullname", fullname);
            request.setAttribute("password", password);
            request.setAttribute("email", email);
            request.setAttribute("address",address);
            request.setAttribute("phone", phone);
//            request.setAttribute("sex",sex);
            request.setAttribute("uname-err", "Tên tài khoản đã tồn tại");
            request.setAttribute("email-err","Email đã tồn tại");
//            request.setAttribute("entry","Không thể để trống");
            request.getRequestDispatcher("/views/web/register.jsp").forward(request, response);
        }
    }
}
