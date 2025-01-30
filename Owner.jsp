<%-- 
    Document   : User
    Created on : Dec 1, 2021, 3:11:12 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
			<li class="first current_page_item"><a href="index.html">Home</a></li>
			<li><a href="User.jsp">User</a></li>
			<li><a href="Admin.jsp">Admin</a></li>
                       <li><a href="Owner.jsp">Ground Owner</a></li>
			<li><a href="Reg.jsp">Registration</a></li>
                        <li><a href="GroundOwner.jsp">Owner Registration</a></li>
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/banner.png" width="870" height="230" alt="" />
	</div>
	<br/>
        <div style="margin-left:230px;">
	<form name="f1" method="post" action="OwnerLoginAction.jsp" onsubmit="return validate(this);"><br/>
   <h2><b>Ground Owner Login Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" style="margin-bottom:100px;">
			 <tr><td><b>Username</b></td><td><input type="text" name="user" style="font-family: Comic Sans MS" size=30 required=""/></td></tr>
         
		  <tr><td><b>Password</b></td><td><input type="password" name="password" style="font-family: Comic Sans MS" size=30 required=""/></td></tr>
         
			<tr><td></td><td><input type="submit" value="Login">
                                    <input type="reset" value="Reset">
			</td>
			</table>
        </form>
        </div>
</body>
</html>