<%@ include file="aheader.jsp"%>
<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('Once again verify  Admin and Password....!!!!')</script>");
}
%>
	<div id="body">
		<div id="featured">
			<div class="first">
				<div>
					<h2>World&#8217;s Finest and Elegant Tuxedo</h2>
					<p>
						You Could Say I Have A Passion For Handmade Fashion!  You Could Say I Have A Passion For Handmade Fashion! 
					</p>
					<a href="product.jsp" id="shopnow">View More</a>
				</div>
				<span><img src="images/tuxedo1.jpg" alt="Image"></span>
			</div>
			<div class="last">
                                                                                   <h3>Consultant Login:</h3>
				<form action="consvalidation.jsp" method="post">
				<table>
				<tr>
				<td><h4>Consultancy Mail Id:</h4></td><td><input type="email" id="newsletter"name="cemail" required/></td>
				</tr>
				<tr>
				<td><h4>Mobile Number:</h4></td><td><input type="text" id="newsletter" name="mno" maxlength="10"required/></td>
				</tr>
				<tr>
				<td><input type="submit" class="myButton" value="Login" /></td><td><input type="reset" class="myButton" value="Reset"/></td>
				</tr>
				</table>
				</form>
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