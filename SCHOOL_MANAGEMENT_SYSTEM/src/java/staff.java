import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/staff"})
public class staff extends HttpServlet {

@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
      
String username=request.getParameter("username");
String password=request.getParameter("password");
if(username.equals("staff") && password.equals("3311"))
{
response.sendRedirect("staffform.jsp");
   
}
else 
response.sendRedirect("error.jsp");
}
}