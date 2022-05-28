package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.login;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "LoginGoogleHandler", value = "/doLoginGoogle")
public class LoginGoogleHandler extends HttpServlet {

    protected void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
         String code = request.getParameter("code");
         String accessToken = getToken(code);
    }
    public static String getToken(final String code) throws ClientProtocolException,IOException{
      // call api to get token
        String respose = Request
                .Post(Constants.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id",Constants.GOOGLE_CLIENT_ID)
                        .add("client_secret",Constants.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri",Constants.GOOGLE_REDIRECT_URI)
                        .add("grant_type",Constants.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();
        JsonObject jonj = new Gson().fromJson(respose,JsonObject.class);
        String accessToken = jonj.get("access_token").toString().replaceAll("\"","");
       return  accessToken;
    }
    public static GoogleUserInformation getUserInfor(final String accessToken) throws  ClientProtocolException,IOException{
           String link = Constants.GOOGLE_LINK_GET_USER_INFO+accessToken;
           String response = Request.Get(link).execute().returnContent().asString();
           GoogleUserInformation gooolePojo = new Gson().fromJson(response,GoogleUserInformation.class);
           return gooolePojo;
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
