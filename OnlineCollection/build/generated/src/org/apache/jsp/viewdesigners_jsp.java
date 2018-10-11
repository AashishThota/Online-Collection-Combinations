package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.text.*;
import databaseconnection.*;
import java.sql.*;

public final class viewdesigners_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


			Statement stmt;
			Connection con;
			ResultSet rs;
			
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
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

      out.write("<!DOCTYPE html>\r\n");
      out.write("<!-- Website template by freewebsitetemplates.com -->\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t<title>Tailor Shop Website Template</title>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\r\n");
      out.write("\t<!--[if IE 7]><link rel=\"stylesheet\" type=\"text/css\" href=\"css/ie7.css\"><![endif]-->\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"header\">\r\n");
      out.write("\t\t<div>\r\n");
      out.write("\t\t\t<a href=\"index.jsp\" id=\"logo\"><img src=\"images/ss.png\"width=\"300\" height=\"150\" alt=\"Logo\"></a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li class=\"current\">\r\n");
      out.write("\t\t\t\t\t<a href=\"consulthome.jsp\">Home</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<a href=\"logout.jsp\">Logout</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");

String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('Successfull Login..!!')</script>");
}

String updmsg = request.getParameter("updmsg");
if(updmsg != null){
out.println("<script>alert('Successfull Uploded..!!')</script>");
out.println("<script>alert('You Want Try again???')</script>");
}

String updmsg1 = request.getParameter("updmsg1");
if(updmsg1 != null){
out.println("<script>alert('Unsuccessfull Uploded..!! Tray Again..')</script>");
}

      out.write("\r\n");
      out.write("\t<div id=\"body\">\r\n");
      out.write("\t\t<div id=\"featured\">\r\n");
      out.write("\t\t\t<div class=\"first\">\r\n");
      out.write("\t\t\t<h3>Welcome  ");
 
					String str=(String)session.getAttribute("consult_name");
					
      out.write("<font color=\"red\">");
      out.print(str);
      out.write("</font></h3>\r\n");
      out.write("\t\t\t");
      out.write("\r\n");
      out.write("\t\t\t<table>\r\n");
      out.write("\t\t\t");

			con = databasecon.getconnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select * from designers");
			while(rs.next()){
			
      out.write("\r\n");
      out.write("\t\t\t<tr><td><h3 color=\"red\">");
      out.print(rs.getString("name"));
      out.write("</h3></td><td><a href=\"viewbydesigner.jsp?designer=");
      out.print(rs.getString("name"));
      out.write("\"><img src=\"designers/");
      out.print(rs.getString("pics"));
      out.write("\" width=\"150\" height=\"150\"/></a></td></tr>\r\n");
      out.write("\t\t\t<tr></tr>\r\n");
      out.write("\t\t\t");

			}
			
      out.write("\r\n");
      out.write("\t\t\t</table>\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"last\">\r\n");
      out.write("\t\t\t<marquee behavior=\"scroll\" direction=\"up\" scrolldelay=\"500\"><font color=\"yellow\"><p>A fashion designer must have a creative personality, a unique sense of style and a love of clothing. They help create clothing and accessories, including belts, purses, boots and formal dresses. Successful fashion designers have an eye for color and detail. They must also solve problems quickly and communicate effectively with other garment workers and salespeople.</p></font></marquee>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div id=\"content\">\r\n");
      out.write("\t\t\t<div id=\"home\">\r\n");
      out.write("\t\t\t\t<marquee behavior=\"scroll\" direction=\"left\" scrolldelay=\"20\"><font color=\"yellow\"><img src=\"images.png\" width=\"50\" height=\"50\" alt=\"Natural\" />You Could Say I Have A Passion For Handmade Fashion!<img src=\"images.png\" width=\"50\" height=\"50\" alt=\"Natural\" /> I Enjoy Testing Out, Trying And Tweaking Designer Patterns On The Market As Well As Creating Designs Of My Own!<img src=\"images.png\" width=\"50\" height=\"50\" alt=\"Natural\" /> Check Out My Online Pattern Store To Learn How To Create Simple And Flattering Designs Perfect For Beginning Your Own Handmade Wardrobe!<img src=\"images.png\" width=\"50\" height=\"50\" alt=\"Natural\" /></font></marquee>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
