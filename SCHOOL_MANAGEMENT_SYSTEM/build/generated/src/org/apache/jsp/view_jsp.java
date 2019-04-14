package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class view_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write(" \n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"csc/m.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>VIEW STUDENT RECORD</title>\n");
      out.write("<link href=\"stylesheet.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\" />\n");
      out.write("<style type=\"text/css\">\n");
      out.write("body\n");
      out.write("{\n");
      out.write("background-color:white;\n");
      out.write("color: black;\n");
      out.write("}\n");
      out.write(".wel\n");
      out.write("{\n");
      out.write("color:rgb(121,56,250);\n");
      out.write("font-size:24px;\n");
      out.write("}\n");
      out.write(".bm\n");
      out.write("{\n");
      out.write("color:red;\n");
      out.write("font-size:18px;\n");
      out.write("}\n");
      out.write("a\n");
      out.write("{\n");
      out.write("text-decoration:none;\n");
      out.write("color:maroon;\n");
      out.write("font-size:20px;\n");
      out.write("}\n");
      out.write("a:hover\n");
      out.write("{\n");
      out.write("text-decoration:underline;\n");
      out.write("color:rgb(90,216,210);\n");
      out.write("}\n");
      out.write("h2\n");
      out.write("{\n");
      out.write("text-align:center;\n");
      out.write("color:olive;\n");
      out.write("font-size:30px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");

Connection con;
int count=0;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
Statement st= con.createStatement();
ResultSet rs = st.executeQuery("select * from student");

      out.write("\n");
      out.write("<center> <h1><I><font color=\"green\"> VIEW STUDENT RECORD</h1></center></i></font>\n");
      out.write("<CENTER><a href=\"index.jsp\" class=\"btn btn-success btn-xs\">HOME</a>\n");
      out.write("    <a href=\"view.jsp\"class=\"btn btn-success btn-xs\">REFRESH</a>\n");
      out.write("<a href=\"panel.jsp\" class=\"btn btn-success btn-xs\" role=\"button\">BACK</a></CENTER>\n");
      out.write("<TR><TD>&nbsp;</td>\n");
      out.write("<td>&nbsp;</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("<table class=\"table table-striped table-bordered  table-condensed\"style=\"width: 70%\">  \n");
      out.write("<tr>\n");
      out.write("<th>S/NO</th>   \n");
      out.write("<th>FIRSTNAME</th>        \n");
      out.write("<th>LASTNAME</th>         \n");
      out.write("<th>MIDDLENAME</th>         \n");
      out.write("<th>STUDENTID</th> \n");
      out.write("<th>GENDER</th>        \n");
      out.write("<th>DATE_OF_BIRTHDAY</th>         \n");
      out.write("<th>PHONE</th>         \n");
      out.write("<th>EMAIL</th> \n");
      out.write("<th>ADDRESS</th>        \n");
      out.write("<th>DEPARTMENT</th>         \n");
      out.write("<th>FALCULTY</th>         \n");
      out.write("<th>STATE</th> '\n");
      out.write("<th>COUNTRY</th>         \n");
      out.write("<th>DATE</th>\n");
      out.write("</tr> \n");
      out.write("  </center>\n");
      out.write("\n");
      out.write("\n");

while(rs.next())
{
rs.getString("STUDENTID");

      out.write("\n");
      out.write("<tr class=\"view_field\" bgcolor=\"lightgrey\">\n");
      out.write("<td><div align=\"center\">");
      out.print(++count );
      out.write("</div></td>\n");
      out.write("<td>");
      out.print( rs.getString("FIRSTNAME") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( rs.getString("LASTNAME") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( rs.getString("MIDDLENAME") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( rs.getString("STUDENTID") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( rs.getString("GENDER") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( rs.getString("DATE_OF_BIRTHDAY") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( rs.getString("PHONE") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( rs.getString("EMAIL") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( rs.getString("ADDRESS") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( rs.getString("DEPARTMENT") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( rs.getString("FALCULTY") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( rs.getString("STATE") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( rs.getString("COUNTRY") );
      out.write("</td>\n");
      out.write("<td>");
      out.print( rs.getString("DATE") );
      out.write("</td>\n");
      out.write("</tr>\n");
 } 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</table>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
