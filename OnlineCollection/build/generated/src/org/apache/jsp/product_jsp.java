package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import databaseconnection.*;
import java.sql.*;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


Statement stmt;
Connection con;
ResultSet rs;

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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

      out.write("\t<!DOCTYPE html>\r\n");
      out.write("<!-- Website template by freewebsitetemplates.com -->\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t<title>Tailor Shop Website Template</title>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\r\n");
      out.write("\t<!--[if IE 7]><link rel=\"stylesheet\" type=\"text/css\" href=\"css/ie7.css\"><![endif]-->\r\n");
      out.write("\t</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"header\">\r\n");
      out.write("\t\t<div>\r\n");
      out.write("\t\t\t<a href=\"index.jsp\" id=\"logo\"><img src=\"images/ss.png\"width=\"300\" height=\"150\"alt=\"Logo\"></a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li class=\"current\">\r\n");
      out.write("\t\t\t\t\t<a href=\"index.jsp\">Home</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<a href=\"product.jsp\">Product</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<a href=\"adminlogin.jsp\">Admin</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<a href=\"designerlogin.jsp\">Designer</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<a href=\"conslogin.jsp\">Consultancy</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\t<div id=\"body\">\n");
      out.write("\t\t<div id=\"featured\">\n");
      out.write("\t\t\t<h1>World&#39;s Finest and Elegant Tuxedo</h1>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\t<div id=\"content\">\n");
      out.write("\t\t\t<div id=\"product\">\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t");

					con = databasecon.getconnection();
					stmt = con.createStatement();
					rs = stmt.executeQuery("select * from descollection");
					while(rs.next()){
					
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<img src=\"uploads/");
      out.print(rs.getString("pics"));
      out.write("\" alt=\"Image\" width=\"258\" height=\"348\" >\n");
      out.write("\t\t\t\t\t\t<h2>");
      out.print(rs.getString("caption"));
      out.write("</h2>\n");
      out.write("\t\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t\tDesigned By:");
      out.print(rs.getString("desname"));
      out.write("\n");
      out.write("\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\tUpdate On:<span>");
      out.print(rs.getString("date"));
      out.write("</span>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t");

					}
					
      out.write("\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t");
      out.write("<div id=\"footer\">\r\n");
      out.write("\t\t<div>\r\n");
      out.write("\t\t\t<div class=\"first\">\r\n");
      out.write("\t\t\t\t<h4>Services</h4>\r\n");
      out.write("\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\tDesign is the applied art dedicated to the design of clothing and lifestyle accessories created within the cultural and social influences of a specific time.Design differs from costume design due to its core product having a built in obsolescence usually of one to two seasons. A season is defined as either autumn/winter or spring/summer. \r\n");
      out.write("\t\t\t\t</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"last\">\r\n");
      out.write("\t\t\t\t<h4>Social</h4>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<a href=\"https://www.facebook.com/cloudtechnologiespro?ref=hl\" target=\"_blank\" id=\"facebook\">Facebook</a>\r\n");
      out.write("\t\t\t\t\t<a href=\"https://twitter.com/cloudtechpro\" target=\"_blank\" id=\"twitter\">Twitter</a>\r\n");
      out.write("\t\t\t\t\t<a href=\"https://www.youtube.com/channel/UCa8LoTEK3XjKc87B5-PlKzw\" target=\"_blank\" id=\"googleplus\">Google&#43;</a>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<p class=\"footnote\">\r\n");
      out.write("\t\t\t&copy; Copyright 2015. All rights reserved.\r\n");
      out.write("\t\t</p>\r\n");
      out.write("\t</div>");
      out.write("\n");
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
