/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.69
 * Generated at: 2016-06-01 07:09:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addRecordView_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js\"></script>\n");
      out.write("    <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("    <style>\n");
      out.write("        #index h1 {\n");
      out.write("        color: #0066cc;\n");
      out.write("        text-align: center;\n");
      out.write("        }\n");
      out.write("        .btn-lg.round {\n");
      out.write("     \tborder-radius: 24px;\n");
      out.write("        }\n");
      out.write("        .container {\n");
      out.write("        border-radius: 50px;\n");
      out.write("        background: white;\n");
      out.write("        margin-top: 100px;\n");
      out.write("        padding-top:35px;\n");
      out.write("        padding-bottom: 50px;                               \n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("    <body id=\"index\" style=\"background-color: #333333;\">\n");
      out.write("        <div id=\"p\" class=\"container\">\n");
      out.write("        <h1 id=\"index\"> Books </h1><br><br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("        <form id=\"form1\" enctype=\"multipart/form-data\" action=\"addphoto\" method=\"post\" class=\"col-md-4 col-md-offset-4\">\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("        <div class=\"col-md-4\">\n");
      out.write("        <label for=\"Name\">Book Name:</label>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-8\">\n");
      out.write("        <input type=\"text\" class=\"form-control\" name=\"bname2\" placeholder=\"Enter name\">\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <br><br>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("        <div class=\"col-md-4\">\n");
      out.write("        <label for=\"Password\">Author:</label>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-8\">\n");
      out.write("        <input type=\"text\" class=\"form-control\" name=\"author\" placeholder=\"Enter Author name\">\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <br><br>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("        <div class=\"col-md-4\">\n");
      out.write("        <label for=\"Password\">Image:</label>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-8\">\n");
      out.write("        <input type=\"file\" class=\"form-control\" name=\"photo\">\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <br><br>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("        <div class=\"col-md-4\">\n");
      out.write("        <label for=\"Phone\">Edition:</label>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-8\">\n");
      out.write("        <input type=\"text\" class=\"form-control\" name=\"edition\" placeholder=\"Enter edition\">\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <br><br><div class=\"form-group\">\n");
      out.write("        <div class=\"col-md-4\">\n");
      out.write("        <label for=\"Email\">Publisher:</label>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-8\">\n");
      out.write("        <input type=\"text\" class=\"form-control\" name=\"publisher\" placeholder=\"Enter publisher\">\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <br><br>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("        <div class=\"col-md-4\">\n");
      out.write("        <label for=\"address\">Price:</label>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-8\">\n");
      out.write("         <input type=\"number\" class=\"form-control\" name=\"price\" placeholder=\"Enter price\">\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <br><br>\n");
      out.write("        <center>\n");
      out.write("        <input type=\"submit\" class=\"btn btn-primary\" value=\"Sell\">\n");
      out.write("        </center>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("        </div>                                                                         \n");
      out.write("    </body> \n");
      out.write("</html>");
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