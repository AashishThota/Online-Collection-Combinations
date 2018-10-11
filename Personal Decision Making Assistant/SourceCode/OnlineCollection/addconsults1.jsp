<%@page import="databaseconnection.*,java.sql.*"%>
<%!
Statement stmt,stmt1,stmt2;
Connection con;
ResultSet rs;
%>
<%
con = databasecon.getconnection();
String consult = request.getParameter("consult");

String consult_name = consult.replace(" ","_");
stmt2 = con.createStatement();
stmt2.executeUpdate("create table if not exists "+consult_name+"(picname varchar(4000),desname varchar(40),date varchar(20),rating int(2)) ");

String email = request.getParameter("mail");
String mno = request.getParameter("mno");
String addr = request.getParameter("addr");

stmt = con.createStatement();
int i = stmt.executeUpdate("insert into consults values('"+consult+"','"+email+"','"+mno+"','"+addr+"')");
if(i>=0){
response.sendRedirect("adminhome.jsp?conmsg=succ");
}else{
response.sendRedirect("addconsults.jsp?conmsg1=unsucc");
}

%>