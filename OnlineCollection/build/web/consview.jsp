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
			<a href="index.jsp" id="logo"><img src="images/ss.png" width="300" height="150" alt="Logo"></a>
			<ul>
				<li class="current">
					<a href="consulthome.jsp">Home</a>
				</li>
				<li>
					<a href="conlogout.jsp">Logout</a>
				</li>
				</ul>
		</div>
	</div>
	<%@ page import="databaseconnection.*,java.sql.*"%>

<%!
Statement stmt;
Connection con;
ResultSet rs;
%>

	<div id="body">
		<div id="featured">
			<h1>World&#39;s Finest and Elegant Tuxedo</h1>
		</div>
			<div id="content">
			<div id="product">
			<h3>Welcome  <% 
					String str=(String)session.getAttribute("consult_name");
					%><font color="red"><%=str%></font></h3>
				<ul>
					<%
					con = databasecon.getconnection();
					stmt = con.createStatement();
					rs = stmt.executeQuery("select * from descollection");
					while(rs.next()){
					%>
	
					<li>
					<img src="uploads/<%=rs.getString("pics")%>" alt="Image" width="258" height="348" >
						<h2><%=rs.getString("caption")%></h2>
						<p>
							Designed By:<%=rs.getString("desname")%>
						</p>
						Update On:<span><%=rs.getString("date")%></span>
						<br><br><br>
					</li>
					<%
					}
					%>
					</ul>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>