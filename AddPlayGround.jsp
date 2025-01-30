<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>WEB-BASED SPORTS ARENA BOOKING HUB</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h3><font size="5" color="white">WEB-BASED SPORTS ARENA BOOKING HUB</font></h3>
		</div>
		<div id="slogan">
			
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first current_page_item"><a href="OwnerHome.jsp">Home</a></li>
			<li><a href="AddPlayGround.jsp">Add Play Ground</a></li>
			<li><a href="ViewPlayGroundDetails.jsp">View Play Ground</a></li>
                       <li><a href="ViewBookingDetails.jsp">View  Booking Requests</a></li>
			
                        <li><a href="index.html">Logout</a></li>
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/banner.png" width="870" height="230" alt="" />
	</div>
	<br/>
	<div style="margin-left:230px;">
            <%String id=(String)session.getAttribute("id");
            String email=(String)session.getAttribute("email");
            String name=(String)session.getAttribute("name");%>
            <h3 style="margin-bottom:100px;">Welcome to :  <%=email%></h3>
            
            <form name="f1" method="post" action="AddPlayGroundAction.jsp" onsubmit="return validate(this);"><br/>
   <h2><b>Add Play Ground Details Here</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
			<table align="center" width="40" >
			 <tr><td><b>Name</b></td><td><input type="text" name="name" value="<%=name%>" readonly=""/></td></tr>

			<tr><td><b>Email</b></td><td><input type="email" name="email" value="<%=email%>" readonly=""/></td></tr>

			<tr><td><b>Ground Name</b></td><td><input type="text" name="gname" required=""/></td></tr>

			<tr><td><b>Ground Address</b></td><td><input type="text" name="groundaddress" required=""/></td></tr>
         
		  
                       <tr><td><b>Ground Area</b></td><td><input type="text" name="groundarea" required=""/></td></tr>
                        <tr><td><b>Used For</b></td><td><input type="text" name="usedfor" required=""/></td></tr>
                         
                      
			<tr><td></td><td><input type="submit" value="Add Ground"/></td>
			</table>
        </form>
        </div>
        </div>
</body>
</html>