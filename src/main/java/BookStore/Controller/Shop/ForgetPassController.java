package BookStore.Controller.Shop;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Properties;
import java.util.Random;

@WebServlet(urlPatterns = "/forgot")
public class ForgetPassController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("text/html;charset-UTF8");

            RequestDispatcher rd = request.getRequestDispatcher("/views/web/forgot.jsp");
            rd.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
            String email = request.getParameter("email");
            RequestDispatcher rd = null;
            int otp = 0;
            HttpSession httpSession = request.getSession();
            if (email != null || !email.equals("")){
                Random random = new Random();
                otp = random.nextInt(1255650);
                System.out.println("otp:" + otp);
                String to = email;

                Properties properties = new Properties();
                properties.put("mail.smtp.auth", "true");
                properties.put("mail.smtp.starttls.enable", "true");
                properties.put("mail.smtp.host", "smtp.gmail.com");
                properties.put("mail.smtp.port", "587");
                Session session = Session.getInstance(properties,new javax.mail.Authenticator(){
                   protected PasswordAuthentication getPasswordAuthentication(){
                       return new PasswordAuthentication("ltwebgr2021@gmail.com","gcgbdoxztmabrwzq");
                   }
                });
                try {
                    Message message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(email,"BookStore"));
                    message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
                    message.setSubject("Hello");
                    message.setText("Your OTP is: " + otp);
                    System.out.println("messs:" + message);
                    Transport.send(message);
                }  catch (MessagingException e) {
                    e.printStackTrace();
                }
            }
            rd  = request.getRequestDispatcher("views/web/otp.jsp");
            request.setAttribute("message","OTP is sent to your email id");
            httpSession.setAttribute("otp",otp);
            httpSession.setAttribute("email",email);
            rd.forward(request,response);

    }
}
