<%@ include file="ahheaser.jsp"%>
<%@ page import="databaseconnection.*,java.sql.*,java.util.*,java.text.DecimalFormat"%>
<%!
Statement stmt,stmt1,stmt2,stmt3,stmt4,stmt5;
Connection con;
ResultSet rs,rs1,rs2,rs3,rs4;
int count;
Vector v = new Vector();
String avgr;
%>
<script type="text/javascript"
    src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
$.fn.starss = function() {
    return $(this).each(function() {
        // Get the value
        var val = parseFloat($(this).html());
        // Make sure that the value is in 0 - 5 range, multiply to get width
        var size = Math.max(0, (Math.min(5, val))) * 16;
        // Create stars holder
        var $span = $('<span />').width(size);
        // Replace the numerical value with stars
        $(this).html($span);
    });
}
</script>
<%
con = databasecon.getconnection();
stmt = con.createStatement();
rs = stmt.executeQuery("select count(*) as cnt from consults");
if(rs.next()){
count = rs.getInt("cnt");
}

stmt1 = con.createStatement();
rs1 = stmt1.executeQuery("select * from consults");
while(rs1.next()){
v.add(rs1.getString("consult_name"));
}

for(int ii=0;ii<v.size();ii++){
String cons_name = v.get(ii).toString();
String cons_name1 = cons_name.replace(" ","_");

stmt2 = con.createStatement();
rs2 = stmt2.executeQuery("select * from "+cons_name1+"");
stmt3 = con.createStatement();

while(rs2.next()){
String pic_name = rs2.getString("picname");
String desname = rs2.getString("desname");
String datee = rs2.getString("date");
int rating = rs2.getInt("rating");
stmt3.executeUpdate("insert into ranks values('"+pic_name+"','"+cons_name1+"','"+datee+"','"+rating+"')");
}
}
stmt4 = con.createStatement();
rs3 = stmt4.executeQuery("select picname,AVG(rank) as avgrank from ranks group by picname");
%>
<h3>Welcome  <% 
					String str=(String)session.getAttribute("aname");
					%><font color="red"><%=str%></font></h3>
<div id="body">
		<div id="featured">
			<h1>World&#39;s Finest and Elegant Tuxedo</h1>
		</div>
			<div id="content">
			<div id="product">
				<ul>
				
<%
while(rs3.next()){
	stmt5 = con.createStatement();
	String ppics = rs3.getString("picname");
	rs4 = stmt5.executeQuery("select * from descollection where pics='"+ppics+"'");
	if(rs4.next()){
%>
<li>				
					<font color="yellow"><h3><b>Designs By the:<span><%=rs4.getString("desname")%></span>&nbsp;&nbsp Date:<span><%=rs4.getString("date")%></span></b></h3></font>
					<img src="uploads/<%=rs3.getString("picname")%>" alt="Image" width="258" height="348" >
						<h2>Overall Ratings</h2>
						<p>
						<%
							double d = Double.parseDouble(rs3.getString("avgrank"));
							DecimalFormat f = new DecimalFormat("##.00");
							String avgr = f.format(d).toString();
						%>
							<font color="red" size="3">Rating:<span class="starss"><b><%=avgr%></b></span></font>
						</p>
						
					</li>
<%
}
}
%>
</ul>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>