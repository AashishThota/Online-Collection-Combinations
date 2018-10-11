<%@ page import="databaseconnection.*,java.sql.*"%>
<%!
Statement stmt,stmt1;
Connection con;
ResultSet rs;
%>
<%
String desid = request.getParameter("desid");
String despass = request.getParameter("despass");

con = databasecon.getconnection();
stmt = con.createStatement();
rs = stmt.executeQuery("select * from designers where designerid='"+desid+"'");
if(rs.next()){
String did = rs.getString("designerid");
String dpass = rs.getString("password"); 
String name = rs.getString("name");

session.setAttribute("did",did);
session.setAttribute("name",name);

if((desid.equals(did))&&(despass.equals(dpass))){
response.sendRedirect("designerhome.jsp?msg=succ");
}else{
response.sendRedirect("index.jsp?desmsg=unsucc");
}
}
%>