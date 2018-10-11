<%
String aname = request.getParameter("aname");
String apass = request.getParameter("apass");
if((aname.equals("admin"))&&(apass.equals("admin"))){
	session.setAttribute("aname",aname);
response.sendRedirect("adminhome.jsp?msg=succ");
}else{
response.sendRedirect("adminlogin.jsp?msg=unsucc");
}
%>