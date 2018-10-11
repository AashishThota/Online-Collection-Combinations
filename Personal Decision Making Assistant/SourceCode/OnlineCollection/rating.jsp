<%@ page import="databaseconnection.*,java.sql.*"%>
<%!
Statement stmt,stmt1,stmt2,stmt3;
Connection con;
%>
<%
con = databasecon.getconnection();
stmt = con.createStatement();
stmt1 = con.createStatement();
stmt2 = con.createStatement();
stmt3 = con.createStatement();
String rate = request.getParameter("rating");
String picname = (String)session.getAttribute("picname");
String desname = (String)session.getAttribute("desname");
String datee = (String)session.getAttribute("datee");

String consult_name = (String)session.getAttribute("consult_name1");
stmt2.executeUpdate("update descollection set ranking='"+rate+"' where pics='"+picname+"' ");

stmt.executeUpdate("create table if not exists "+consult_name+"(picname varchar(4000),desname varchar(40),date varchar(20),rating int(2)) ");

ResultSet rs = stmt3.executeQuery("select picname,desname from "+consult_name+" where picname='"+picname+"'");
if(rs.next()){
response.sendRedirect("consulthome.jsp?msg2=fail");
}else{
int i = stmt1.executeUpdate("insert into "+consult_name+" values('"+picname+"','"+desname+"','"+datee+"','"+rate+"')");
System.out.println(i);
if(i>=0){
response.sendRedirect("viewbydesigner.jsp?designer="+desname+" ");
}
}


%>