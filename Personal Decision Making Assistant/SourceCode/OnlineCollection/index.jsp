<%@ include file="header.jsp"%>

<%
String desmsg = request.getParameter("desmsg");
if(desmsg != null){
out.println("<script>alert('Once again verify  Designerid and Password....!!!!')</script>");
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
				<h3>Handcrafted and made from 100% Wool</h3>
				<ul>
					<li>
						<a href="product.jsp"><img src="images/tuxedo2.jpg" alt="Image"></a>
						<p>
							This is just a place holder
						</p>
					</li>
					<li>
						<a href="product.jsp"><img src="images/tuxedo3.jpg" alt="Image"></a>
						<p>
							This is just a place holder
						</p>
					</li>
				</ul>
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