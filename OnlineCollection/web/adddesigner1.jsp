<%@page import="databaseconnection.*,java.sql.*"%>
<%!
Statement stmt,stmt1;
Connection con;
ResultSet rs;
%>
<%
String dname = request.getParameter("dname");
String dlname = request.getParameter("dlname");
String pwd = request.getParameter("pwd");
String email = request.getParameter("mail");
String dob = request.getParameter("dob");
String gender = request.getParameter("sex");
String equlifi = request.getParameter("edu");
String mno = request.getParameter("mno");
String addr = request.getParameter("addr");
String pics = request.getParameter("pics");

System.out.println(dob);
String[ ] dob1 = dob.split("-");
int dob2  = Integer.parseInt(dob1[0]);
if(dob2>1990){
response.sendRedirect("adddesigner.jsp?dobmsg=dob");
}else{
int i=0;
con = databasecon.getconnection();
stmt = con.createStatement();
rs = stmt.executeQuery("select count(*) as cnt from designers");
if(rs.next()){
	i = rs.getInt("cnt");
}
String desid="user110"+i;
stmt1 = con.createStatement();
int j = stmt1.executeUpdate("insert into designers values('"+desid+"','"+dname+"','"+dlname+"','"+pwd+"','"+email+"','"+dob+"','"+gender+"','"+equlifi+"','"+mno+"','"+addr+"','"+pics+"')");
if(j>=0){
response.sendRedirect("adminhome.jsp?msg1=succ");
}else{
response.sendRedirect("adddesigner.jsp?msg2=unsucc");
}
}
%>