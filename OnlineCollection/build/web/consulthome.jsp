<%
String msg2 = request.getParameter("msg2");
if(msg2 != null){
out.println("<script>alert('Already Ratings are given..!!')</script>");
}%>
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
			<a href="index.jsp" id="logo"><img src="images/ss.png"  width="300" height="150" alt="Logo"></a>
			<ul>
				<li class="current">
					<a href="#">Home</a>
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
<%
Connection con = databasecon.getconnection();
Statement stmt = con.createStatement();
String consult_name1 = (String)session.getAttribute("consult_name1");
stmt.executeUpdate("create table if not exists "+consult_name1+"(picname varchar(4000),desname varchar(40),date varchar(20),rating int(2)) ");
%>
	<div id="body">
		<div id="featured">
			<div class="first">
			<h3>Welcome  <% 
					String str=(String)session.getAttribute("consult_name");
					%><font color="red"><%=str%></font></h3>
				<table>
			<tr><td><h3>View All Designes</h3></td><td><a href="consview.jsp"><img src="lanvin-menswear-shows-in-paris_119355750.jpg" width="150" height="100"/></a></td></tr>
			<tr></tr>
			<tr><td><a href="viewdesigners.jsp"><img src="Top-10-Most-Popular-Best-Pakistani-Fashion-Designers-Hit-List-3.jpg" width="150" height="100"/></a></td><td><h3>View By Designer</h3></td></tr>
			
			<tr></tr>
			</table>	
		</div>
			<div class="last">
			<marquee behavior="scroll" direction="up" scrolldelay="500"><font color="green"><p>Fashion design is a challenging, creative field that requires business, art and design skills. A degree in fashion design can prepare you for a number of job opportunities in the fashion industry. Continue reading to learn about the educational requirements you need for a career in this field.</p></font></marquee>
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