<%@ include file="ahheaser.jsp"%>
<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('Welcome  Admin..!!')</script>");
}

String msg1 = request.getParameter("msg1");
if(msg1 != null){
out.println("<script>alert('Designer Successfully Registered..!!')</script>");
}

String conmsg = request.getParameter("conmsg");
if(conmsg != null){
out.println("<script>alert('Consultancy Successfully Registered..!!')</script>");
}


%>
	<div id="body">
		<div id="featured">
			<div class="first">
				<div>
					<h3>Welcome  <% 
					String str=(String)session.getAttribute("aname");
					%><font color="red"><%=str%></font></h3>
					
					<h2>World&#8217;s Finest and Elegant Tuxedo</h2>
					<p>
						You Could Say I Have A Passion For Handmade Fashion!  You Could Say I Have A Passion For Handmade Fashion! 
					</p>
					<a href="product.jsp" id="shopnow">View More</a>
				</div>
				<span><img src="images/tuxedo1.jpg" alt="Image"></span>
			</div>
			<div class="last">
				<table>
			<tr><td><h3>Add Designer</h3></td><td><a href="adddesigner.jsp"><img src="costume-designer.jpg" width="150" height="100"/></a></td></tr>
			<tr></tr>
			<tr><td><a href="addconsults.jsp"><img src="consuts.jpg" width="150" height="100"/></a></td><td><h3>Add Consultants</h3></td></tr>
			</table>
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