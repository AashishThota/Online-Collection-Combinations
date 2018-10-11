<%@ page import="databaseconnection.*,java.sql.*"%>
<%!
Statement stmt,stmt1;
Connection con;
ResultSet rs;
%>
<%
String consemail = request.getParameter("cemail");
String consph = request.getParameter("mno");

con = databasecon.getconnection();
stmt = con.createStatement();
rs = stmt.executeQuery("select * from consults where email='"+consemail+"' and mno='"+consph+"'");
if(rs.next()){

String consult_namee = rs.getString("consult_name");
session.setAttribute("consult_namee",consult_namee);
String consult_name1 = consult_namee.replace(" ","_");
session.setAttribute("consult_name1",consult_name1);


String email = rs.getString("email");
String mno = rs.getString("mno"); 
String consult_name = rs.getString("consult_name");

session.setAttribute("consult_name",consult_name);

if((consemail.equals(email))&&(consph.equals(mno))){
response.sendRedirect("consulthome.jsp?msg=succ");
}else{
response.sendRedirect("index.jsp?desmsg=unsucc");
}
}
%>