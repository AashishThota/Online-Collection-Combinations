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
			<a href="index.jsp" id="logo"><img src="images/ss.png"    width="300" height="150" alt="Logo"></a>
			<ul>
				<li class="current">
					<a href="adminhome.jsp">Home</a>
				</li>
				</ul>
		</div>
	</div>

<%
String dobmsg = request.getParameter("dobmsg");
if(dobmsg != null){
out.println("<script>alert('Above 25 years Only..!!')</script>");
}

String msg2 = request.getParameter("msg2");
if(msg2 != null){
out.println("<script>alert('Unsuccessfull Insertion..!!')</script>");
}
%>
	<div id="body">
		<div id="featured">
			<div class="first">
				<form action ="adddesigner1.jsp" method="post">
				<table>
				<h3>Welcome  <% 
					String str=(String)session.getAttribute("aname");
					%><font color="red"><%=str%></font></h3>
				<tr>
				<td><h2 color="yellow"><i><strong>Provide Designer's Details</strong></i></h2></td>
				</tr>
				<tr>
				<td>Name:</td><td><input type="text" id="newsletter"   name="dname" required/></td>
				<tr>
				<td>Last Name:</td><td><input type="text"  id="newsletter"  name="dlname" required/></td>
				</tr>
				<tr>
				<td>Password:</td><td><input type="password"  id="newsletter" name="pwd" required/></td>
				</tr>
				<tr>
				<td>Email:</td><td><input type="email"  id="newsletter"  name="mail" required/></td>
				</tr>
				<tr>
				<td>Date Of Birth:</td><td><input type="date"  id="newsletter"  name="dob" required/></td>
				</tr>
				<tr>
				<td>Gender:</td><td><input type="radio" name="sex" value="male" required/>Male&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="female" required/>Female</td>
				</tr>
				
				<td>Educational Qualification:</td><td><input type="radio" name="edu" value="graduate" />Graduate&nbsp;&nbsp;&nbsp;<input type="radio" name="edu" value="post graduate" />Post Graduate</td>
				</tr>

				<tr>
				<td>Mobile Number:</td><td><input type="tel"  id="newsletter" name="mno" maxlength="10"  required/></td>
				</tr>
				
				<tr>
				<td>Address:</td><td><textarea name="addr" cols="22`" rows="3"  id="newsletter" ></textarea></td>
				</tr>

				<tr>
				<td>Photo UpLoad:</td><td><input type="file" name="pics" /></td>
				</tr>
				<tr>&nbsp;&nbsp;&nbsp;</tr>
								<tr>&nbsp;&nbsp;&nbsp;</tr>				<tr>&nbsp;&nbsp;&nbsp;</tr>
				<tr>
				<td><input type="submit" class="myButton" value="Register" /></td><td><input type="reset" class="myButton"value="Reset"/></td>
				</tr>

				</table>
				</form>	
		</div>
			<div class="last">
			<marquee behavior="scroll" direction="down" scrolldelay="100"><img src="Fashion-Designer-ytctrs.jpg" width="240" height="120" alt="Natural" /></marquee>
			<marquee behavior="scroll" direction="right" scrolldelay="200"><img src="fashion-consultant.jpg" width="240" height="120" alt="Natural" /></marquee>
			<marquee behavior="scroll" direction="up" scrolldelay="100"><img src="fashion-designer-sketching-close-up.jpg" width="240" height="120" alt="Natural" /></marquee>
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