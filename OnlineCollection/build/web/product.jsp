<%@ include file="header.jsp"%>
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