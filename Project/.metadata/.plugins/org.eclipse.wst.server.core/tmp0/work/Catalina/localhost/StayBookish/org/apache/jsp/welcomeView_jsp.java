/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.69
 * Generated at: 2016-06-05 13:56:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class welcomeView_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <title>Bootstrap Example</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=cwidth=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js\"></script>\n");
      out.write("  <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("  <style>\n");
      out.write("  ");
 String user = (String)session.getAttribute("user");
      out.write("\n");
      out.write("    /* Remove the navbar's default margin-bottom and rounded borders */ \n");
      out.write(".navbar {\n");
      out.write("   margin-bottom: 0;\n");
      out.write("   border-radius: 0;\n");
      out.write("  }\n");
      out.write("    \n");
      out.write("    /* Add a gray background color and some padding to the footer */\n");
      out.write("    footer {\n");
      out.write("      background-color: #f2f2f2;\n");
      out.write("      padding: 25px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("  .carousel-inner img {\n");
      out.write("      width: 100%; /* Set width to 100% */\n");
      out.write("      margin: auto;\n");
      out.write("      min-height:100px;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  /* Hide the carousel text when the screen is less than 600 pixels wide */\n");
      out.write("  @media (max-width: 10px) {\n");
      out.write("    .carousel-caption {\n");
      out.write("      display: none; \n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("  #searchbox\n");
      out.write("{\n");
      out.write("    background-color: #eaf8fc;\n");
      out.write("    background-image: linear-gradient(#fff, #d4e8ec);\n");
      out.write("    border-radius: 35px;    \n");
      out.write("    border-width: 5px;\n");
      out.write("    border-style: solid;\n");
      out.write("    border-color: #c4d9df #a4c3ca #83afb7;            \n");
      out.write("    width: 700px;\n");
      out.write("    height: 70px;\n");
      out.write("    padding: 10px;\n");
      out.write("    margin: 100px auto 50px;\n");
      out.write("    overflow: hidden; /* Clear floats */\n");
      out.write("}\n");
      out.write("#search{\n");
      out.write("    width:55px;\n");
      out.write("    height:40px;\n");
      out.write("    \n");
      out.write("    }\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write(" \n");
      out.write("   <img src = \"logo.png\" align=\"left\" > <center><h1>STAY BOOKISH </h1></center>      \n");
      out.write(" <center><p>You Request We Sell!!!</p></center>\n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-inverse\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>                        \n");
      out.write("      </button>\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"active\"><a href=\"welcomeView.jsp\">Home</a></li>\n");
      out.write("        \n");
      out.write("        <li><a href=\"bookView.jsp\">Books</a></li>\n");
      out.write("        <li><a href=\"sell\">Sell</a></li>\n");
      out.write("       \n");
      out.write("      </ul>\n");
      out.write("       ");
 if(user != null){ 
      out.write("\n");
      out.write("         <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("            <li class=\"active\"><a href=\" \">Welcome ");
      out.print(user );
      out.write("</a></li>\n");
      out.write("             <li><a href=\"cartView.jsp\"><span class=\"glyphicon glyphicon-shopping-cart\"></span> Cart</a></li>\n");
      out.write("             <li ><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("         </ul>\n");
      out.write("      ");
 }else{ 
      out.write("\n");
      out.write("        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("        <li><a href=\"loginView.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</a></li>\n");
      out.write("      </ul>\n");
      out.write("      ");
} 
      out.write(" \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("<div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("    <!-- Indicators -->\n");
      out.write("    <ol class=\"carousel-indicators\">\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("    </ol>\n");
      out.write("\n");
      out.write("    <!-- Wrapper for slides -->\n");
      out.write("    <div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("      <div class=\"item active\">\n");
      out.write("        <img src=\"http://www.bookicious.com/img/bk.jpg\" style = \"height:600px ; width: 1200px;alt=\"Image\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("         \n");
      out.write("        </div>      \n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <div class=\"item\">\n");
      out.write("        <img src=\"http://prmceam.ac.in/wp-content/uploads/2015/09/library.jpg\" style = \"height:600px ; width: 1200px;\"alt=\"Image\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("         \n");
      out.write("        </div>      \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("      \n");
      out.write("    <!-- Left and right controls -->\n");
      out.write("    <a class=\"left carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"prev\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-left\" aria-hidden=\"true\"></span>\n");
      out.write("      <span class=\"sr-only\">Previous</span>\n");
      out.write("    </a>\n");
      out.write("    <a class=\"right carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"next\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-right\" aria-hidden=\"true\"></span>\n");
      out.write("      <span class=\"sr-only\">Next</span>\n");
      out.write("    </a>\n");
      out.write("</div>\n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("<footer class=\"container-fluid text-center\">\n");
      out.write("  <p></p>\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
