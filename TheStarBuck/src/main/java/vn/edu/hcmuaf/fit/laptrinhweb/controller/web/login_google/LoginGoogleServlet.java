package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.login_google;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/doLoginGoogle")
public class LoginGoogleServlet  extends HttpServlet {
   private static final long serialVersionUID = 1L;

   LoginGoogleServlet(){
       super();
   }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//       String code = request.getParameter("code");
//       if(code == null || code.isEmpty()){
//           RequestDispatcher dis = request.getRequestDispatcher("/views/web/login.jsp");
//           dis.forward(request,response);
//       }
//       else{
//           String accessToken = GoogleUtils.getToken(code);
//           GoogleUserInformation googleUserInformation = GoogleUtils.getUserInfo(accessToken);
//           request.setAttribute("id",googleUserInformation.getId());
//           request.setAttribute("name",googleUserInformation.getName());
//           request.setAttribute("email",googleUserInformation.getEmail());
//           RequestDispatcher dis = request.getRequestDispatcher("/views/web/demo.jsp");
//           dis.forward(request,response);
//       }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     doGet(request,response);
//

   }
}
