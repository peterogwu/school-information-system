package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class studentinfo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"csc/m.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<title>JSP Page</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<body bgcolor=\"WHITE\">\n");
      out.write("<div class=\"head\">\n");
      out.write("<center> <h1><I><font color=\"red\" background=\"pink\"> STUDENT  PORTAL</h1></center></i></font>\n");
      out.write("</DIV>\n");
      out.write("\n");
      out.write("<FORM action=\"panel.jsp\" method=\"get\" allign=\"center\" >\n");
      out.write("<table align=\"center\"  >\n");
      out.write(" \n");
      out.write("<div class=\"peter\">\n");
      out.write("<CENTER> \n");
      out.write("    \n");
      out.write("<a href=\"index.jsp\" class=\"btn btn-info\" role=\"button\">HOME</a>\n");
      out.write("<a href=\"school.jsp\"class=\"btn btn-success btn-xs\">CHECK YOUR DETAILS</a>\n");
      out.write("<a href=\"st.jsp\"class=\"btn btn-success btn-xs\"> VIEW RESULT</a>\n");
      out.write("<a href=\"studentinfo.jsp\"class=\"btn btn-success btn-xs\">REFRESH</a>\t\n");
      out.write("<a href=\"studentinfo.jsp\"class=\"btn btn-success btn-xs\">BACK</a>\n");
      out.write("\n");
      out.write("\n");
      out.write("</CENTER>\n");
      out.write("</div> \n");
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
