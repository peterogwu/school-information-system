package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_0020form_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>JSP Page</title>\n");
      out.write("<link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<center> <h1><font color=\"red\">LOGIN FORM FOR ADMIN</h1></center></font> \n");
      out.write("<center>\n");
      out.write("<h2><font color=\"blue\">Signup Details</h2></font>  \n");
      out.write("\n");
      out.write("<form action=\"login\" method=\"get\">\n");
      out.write("<div class=\"container\"  >\n");
      out.write("<form>\n");
      out.write("<div class=\"form-group\">    \n");
      out.write("<label>USERNAME:</label>\n");
      out.write("<input type=\"test\"class=\"form-control\" name=\"username\" placeholder=\"ENTER YOUR USERNAME\">      \n");
      out.write("</div>         \n");
      out.write(" <div class=\"form-group\">    \n");
      out.write("<label>PASSWORD:</label>\n");
      out.write("<input type=\"password\"class=\"form-control\"name=\"password\" placeholder=\"ENTER YOUR PASSWORD\">  \n");
      out.write(" </div> \n");
      out.write("    \n");
      out.write("<input type=\"submit\" name=insert.jsp\" class=\"btn btn-primary\" value=\"SUBMIT\" >\n");
      out.write("<a href=\"index.jsp\" class=\"btn btn-info\" role=\"button\">EXIT</a>\n");
      out.write("\n");
      out.write("</center>\n");
      out.write("</table>    \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("</center> \n");
      out.write("</body>\n");
      out.write("</html>");
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