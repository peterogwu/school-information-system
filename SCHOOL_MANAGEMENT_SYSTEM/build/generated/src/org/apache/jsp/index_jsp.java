package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!doctype html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    \n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<title>student management system</title>\n");
      out.write("<link href=\"csc/m.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link rel=\"stylesheet\" href=\"../lib/w3.css\">\n");
      out.write("<link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"../../../lib/w3.css\">\n");
      out.write("<script src=\"jquery/jquery-3.2.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("  \n");
      out.write(" <style>\n");
      out.write("    \n");
      out.write("  \n");
      out.write("     \n");
      out.write("     \n");
      out.write(" </style>\n");
      out.write(" \n");
      out.write(" \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<nav class=\"navbar navbar-inverse navbar-fixed-top\"id=\"my-navbar\">\n");
      out.write("<div class=\"contain\">\n");
      out.write("<div class=\"head\">\n");
      out.write("<h1><U><span class=\"label label-primary\">DELTA STATE UNIVERSITY OF SCIENCE</U><BR><small><u>AND TECHNOLOGY</h1></small></u></span> \n");
      out.write("   \n");
      out.write("<div class=\"peter\">\n");
      out.write("<a href=\"index.jsp\" class=\"btn btn-info\" role=\"button\">HOME</a>\n");
      out.write("<a href=\"studentform.jsp\"class=\"btn btn-success btn-xs\" role =\"button\">REGISTRATION FORM</a>\n");
      out.write("<a href=\"about.jsp\"class=\"btn btn-success btn-xs\"> ABOUT US</a>\n");
      out.write("<a href =\"contactus.jsp\"class=\"btn btn-success btn-xs\">CONTACT US</a>\n");
      out.write("<a href=\"loginform.jsp\"class=\"btn btn-success btn-xs\">ADMINSTRATION</a>\n");
      out.write("<a href=\"login form.jsp\"class=\"btn btn-success btn-xs\" role =\"button\">STUDENT PORTAL</a>\n");
      out.write("<a href=\"sta.jsp\"class=\"btn btn-success btn-xs\">STAFFS</a>\t\n");
      out.write("<a href=\"gallery.jsp\"class=\"btn btn-success btn-xs\">GALLERY</a>\t\t\n");
      out.write("<a href=\"phdform.jsp\"class=\"btn btn-success btn-xs\">PHD</a>\n");
      out.write("<a href=\"mscstudent.jsp\"class=\"btn btn-success btn-xs\">MS </a>\n");
      out.write("</div>\n");
      out.write(" </nav>\n");
      out.write("\t\n");
      out.write("<div class=\"mark\">\n");
      out.write("<marquee> <H4> POST UME RESULT IS OUT  PLEASE CHECK YOUR STATUS, !!! MS ADMISION IS GOING ON, !!!<mark> FRESH STUDENT HAVE TO RESUME ON 25TH OF FEBRUARY</mark></style> </H4></marquee>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("   \n");
      out.write("<div class=\"w3-content w3-section\" style=\"max-width:500px\">\n");
      out.write("<img class=\"mySlides w3-animate-fading\" src=\"image/Careers-StaffManagement_Frame2.jpg\" alt=\"\"width=\"1350\" height=\"500\"/>\n");
      out.write("<img class=\"mySlides w3-animate-fading\" src=\"image/Careers-StaffManagement_Frame3.jpg\" alt=\"\"width=\"1350\" height=\"500\"/>\n");
      out.write("<img class=\"mySlides w3-animate-fading\" src=\"image/Watson Library_marquee.jpg\" alt=\"\"width=\"1350\" height=\"500\"/>\n");
      out.write("<img class=\"mySlides w3-animate-fading\" src=\"image/img.jpg\" alt=\"\"width=\"1350\" height=\"500\"/>\n");
      out.write("<img class=\"mySlides w3-animate-fading\" src=\"image/group-of-young-business-people-and-designers-picture-id510410894.jpeg\" alt=\"\"width=\"1350\" height=\"500\"/>\n");
      out.write("<img class=\"mySlides w3-animate-fading\"  src=\"image/student-studying-sleeping-on-books-tired-girl-read-book-library-picture-id521611936.jpeg\" alt=\"\"width=\"1350\" height=\"500\"/>\n");
      out.write("<img class=\"mySlides w3-animate-fading\" src=\"image/name.jpg\" alt=\"\"width=\"1350\" height=\"500\"/>\n");
      out.write("<img class=\"mySlides w3-animate-fading\" src=\"image/students-studying-in-college-library-picture-id639359406.jpeg\" alt=\"\"width=\"1350\" height=\"500\"/>\n");
      out.write("<img class=\"mySlides w3-animate-fading\" src=\"image/teacher-helping-kids-with-computers-in-elementary-school-picture-id515272694.jpeg\" alt=\"\"width=\"1350\" height=\"500\"/>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("var myIndex = 0;\n");
      out.write("carousel();\n");
      out.write("\n");
      out.write("function carousel() {\n");
      out.write("var i;\n");
      out.write("var x = document.getElementsByClassName(\"mySlides\");\n");
      out.write("for (i = 0; i < x.length; i++) {\n");
      out.write("x[i].style.display = \"none\";  \n");
      out.write("}\n");
      out.write("myIndex++;\n");
      out.write("if (myIndex > x.length) {myIndex = 1;}    \n");
      out.write("x[myIndex-1].style.display = \"block\";  \n");
      out.write("setTimeout(carousel, 5000);    \n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<br>\n");
      out.write("\n");
      out.write("<div class=\"contain\">\n");
      out.write("<div class=\"col-lg-4 col-md-4 col-sm-4 col-xs-4\">  \n");
      out.write("<div class=\"thumbnail\"> \n");
      out.write("<img src=\"image/vision.jpg\" alt=\"\"width=\"250\" height=\"120\" />\n");
      out.write("<div class=\"caption\"></div>\n");
      out.write("<h3><center>VISION</center></h3> to be an institute of academic excellence with a committement to quality education and research in the field of science and technology.\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\t\n");
      out.write("<div class=\"col-lg-4 col-md-4 col-sm-4 col-xs-4\"> \n");
      out.write("<div class=\"thumbnail\"> \n");
      out.write("<img class=\"img-rounded\" src=\"image/mission.jpg\" alt=\"\"width=\"250\" height=\"120\"/>\n");
      out.write("<div class=\"caption\"></div>\n");
      out.write("<h3><center>MISSION</center></h3> To create world class facilities for advance level of professional training and teaching. to continously grow\n");
      out.write("and become fontain head among institutes of technical education in Nigeria\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("<div class=\"col-lg-4 col-md-4 col-sm-4 col-xs-4\"> \n");
      out.write("<div class=\"thumbnail\"> \n");
      out.write("<img class=\"img-circle\" src=\"image/value.jpeg\" alt=\"\"width=\"250\" height=\"120\"/>\n");
      out.write("<div class=\"caption\"></div>\n");
      out.write("<h3><center>VALUE</center></h3> To continously  grow and become fontain head among institutes of technical education in Nigeria.Attention to issues of National relevance and of global concern.Intellectual excellence.\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write(" \n");
      out.write("<div class=\"con\">\n");
      out.write("<ul class=\"java\">\n");
      out.write("<ul>\n");
      out.write("<li> <a href=\"#\">ADDRESS: 344 DELINE</a> </li>\n");
      out.write("<li> <a href=\"#\">CONTACT US:08033118876</a> </li>\n");
      out.write("<li> <a href=\"#\">EMAIL:peterogwu@gmail.com</a> </li>\n");
      out.write("<li> <a href=\"#\">FACEBOOK:PETER OGWU</a> </li>\n");
      out.write("<li> <a href=\"#\">TWIT US:@peterogwu</a> </li>\n");
      out.write("<li> <a href=\"#\">ESTRANGE:#PETEROGWU</a> </li>\n");
      out.write("</ul>\n");
      out.write("</div>    \n");
      out.write("Copyright© 2018  delta state university of science and technology\n");
      out.write("            \n");
      out.write("    \n");
      out.write("\n");
      out.write("<div class=\"ma\">\n");
      out.write("    <h4> <em><i>design and manage by peterogwu telecommunication company limited</i></h4></em>  \n");
      out.write("</div> \n");
      out.write("   \n");
      out.write("    \n");
      out.write("    \n");
      out.write("</div>\n");
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
