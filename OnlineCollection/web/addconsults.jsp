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
			<a href="index.jsp" id="logo"><img src="images/ss.png"width="300" height="150" alt="Logo"></a>
			<ul>
				<li class="current">
					<a href="adminhome.jsp">Home</a>
				</li>
				</ul>
		</div>
	</div>

<%
String conmsg1 = request.getParameter("conmsg1");
if(conmsg1 != null){
out.println("<script>alert('Unsuccessfull insertion..!!')</script>");
}

%>
	<div id="body">
		<div id="featured">
			<div class="first">
				<form action ="addconsults1.jsp" method="post">
				<table>
				<h3>Welcome  <% 
					String str=(String)session.getAttribute("aname");
					%><font color="red"><%=str%></font></h3>
				<tr>
				<td><h2 color="yellow"><i><strong>Provide Consultants Details</strong></i></h2></td>
				</tr>
				<tr>
				<td>Name of the Consultancy:</td><td><input type="text" id="newsletter"  name="consult" required/></td>
				</tr>
				<tr>
				<td>Email:</td><td><input type="email"  id="newsletter" name="mail" required/></td>
				</tr>
				<tr>
				<td>Mobile Number:</td><td><input type="tel" id="newsletter" name="mno" maxlength="10"  required/></td>
				</tr>
				<tr>
				<td>Address:</td><td><textarea name="addr" cols="22`" rows="3"></textarea></td>
				</tr>
				<tr>&nbsp;&nbsp;&nbsp;</tr>
								<tr>&nbsp;&nbsp;&nbsp;</tr>				<tr>&nbsp;&nbsp;&nbsp;</tr>
				<tr>
				<td><input type="submit" class="myButton" value="Register" /></td><td><input type="reset" class="myButton" value="Reset"/></td>
				</tr>

				</table>
				</form>	
		</div>
			<div class="last">
			<marquee behavior="scroll" direction="down" scrolldelay="100"><img src="16.jpg" width="240" height="120" alt="Natural" /></marquee>
			<marquee behavior="scroll" direction="left" scrolldelay="200"><img src="2014_Fashion-Show_FASH_Benhaz-Sarafpour_Winter2014_SK_10.jpg" width="240" height="120" alt="Natural" /></marquee>
			<marquee behavior="scroll" direction="up" scrolldelay="100"><img src="Lenny-Niemeyer-swim-show-miami.jpg" width="240" height="120" alt="Natural" /></marquee>
			</div>
		</div>
		<div id="content">
			<div id="home">
				<marquee behavior="scroll" direction="left" scrolldelay="20"><font color="yellow"><img src="images.png" width="50" height="50" alt="Natural" />You Could Say I Have A Passion For Handmade Fashion!<img src="images.png" width="50" height="50" alt="Natural" /> I Enjoy Testing Out, Trying And Tweaking Designer Patterns On The Market As Well As Creating Designs Of My Own!<img src="images.png" width="50" height="50" alt="Natural" /> Check Out My Online Pattern Store To Learn How To Create Simple And Flattering Designs Perfect For Beginning Your Own Handmade Wardrobe!<img src="images.png" width="50" height="50" alt="Natural" /></font></marquee>
			</div>
		</div>
	</div>
	
<%@ include file="footer.jsp"%>

</body>
</html>