<%@ page import="databaseconnection.*,java.sql.*,java.util.Date,java.text.*"%>
<%!
Statement stmt,stmt1;
Connection con;
ResultSet rs;
%>
<%
String date = request.getParameter("date");
String caption = request.getParameter("caption");
String file = request.getParameter("pics");

String desid = (String)session.getAttribute("did");
String desname = (String)session.getAttribute("name");

System.out.println(date);
System.out.println(file);

String[ ] extns = file.split("\\.");
System.out.println(extns[1]); 
try{
if((extns[1].equals("jpg"))||(extns[1].equals("png"))||(extns[1].equals("jpeg"))){
con = databasecon.getconnection();
stmt = con.createStatement();
int i = stmt.executeUpdate("insert into descollection values('"+desid+"','"+desname+"','"+date+"','"+caption+"','"+file+"',0)");
if(i>=0){
response.sendRedirect("designerhome.jsp?updmsg=succ");
}else{
response.sendRedirect("designerhome.jsp?updmsg1=unsucc");
}
}else{
out.println("Only JPEG or JPG or PNG files allowed....!!!!");
}
}catch(Exception e){
out.println("Already This pic inserted....");
out.println("<a class='myButton' href='designerhome.jsp'>Back</a>");
}
%>
