<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>Tailor Shop Website Template</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<!--[if IE 7]><link rel="stylesheet" type="text/css" href="css/ie7.css"><![endif]-->
</head>
<body>
	<div id="header">
		<div>
			<a href="index.jsp" id="logo"><img src="images/ss.png"width="300" height="150" alt="Logo"></a>
			<ul>
				<li class="current">
					<a href="consulthome.jsp">Home</a>
				</li>
				<li>
					<a href="logout.jsp">Logout</a>
				</li>
				</ul>
		</div>
	</div>
<%@  page import="java.util.*,java.text.*,databaseconnection.*,java.sql.*"%>
<%
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
%>
	<div id="body">
		<div id="featured">
			<div class="first">
			<h3>Welcome  <% 
					String str=(String)session.getAttribute("consult_name");
					%><font color="red"><%=str%></font></h3>
			<%!
			Statement stmt;
			Connection con;
			ResultSet rs;
			%>
			<table>
			<%
			con = databasecon.getconnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select * from designers");
			while(rs.next()){
			%>
			<tr><td><h3 color="red"><%=rs.getString("name")%></h3></td><td><a href="viewbydesigner.jsp?designer=<%=rs.getString("name")%>"><img src="designers/<%=rs.getString("pics")%>" width="150" height="150"/></a></td></tr>
			<tr></tr>
			<%
			}
			%>
			</table>	
		</div>
			<div class="last">
			<marquee behavior="scroll" direction="up" scrolldelay="500"><font color="yellow"><p>A fashion designer must have a creative personality, a unique sense of style and a love of clothing. They help create clothing and accessories, including belts, purses, boots and formal dresses. Successful fashion designers have an eye for color and detail. They must also solve problems quickly and communicate effectively with other garment workers and salespeople.</p></font></marquee>
			</div>
		</div>
		<div id="content">
			<div id="home">
				<marquee behavior="scroll" direction="left" scrolldelay="20"><font color="yellow"><img src="images.png" width="50" height="50" alt="Natural" />You Could Say I Have A Passion For Handmade Fashion!<img src="images.png" width="50" height="50" alt="Natural" /> I Enjoy Testing Out, Trying And Tweaking Designer Patterns On The Market As Well As Creating Designs Of My Own!<img src="images.png" width="50" height="50" alt="Natural" /> Check Out My Online Pattern Store To Learn How To Create Simple And Flattering Designs Perfect For Beginning Your Own Handmade Wardrobe!<img src="images.png" width="50" height="50" alt="Natural" /></font></marquee>
			</div>
		</div>
	</div>
	
<%@ include file="footer.jsp"%>

</body>
</html>