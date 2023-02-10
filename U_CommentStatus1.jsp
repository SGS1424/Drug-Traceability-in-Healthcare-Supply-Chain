<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Patient omment tatus...</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>Patient</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="searchform"></div>
      <div class="logo">
        <h1><a href="index.html" class="style1">A Blockchain-Based Approach for Drug Traceability in Healthcare Supply Chain</a><a href="index.html"></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span> T</span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  
	  <%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%

String p_Name=request.getParameter("p_name");
String comment=request.getParameter("comment");
String uname=(String)application.getAttribute("uname");

SimpleDateFormat sdfDate = new SimpleDateFormat(
		"dd/MM/yyyy");
SimpleDateFormat sdfTime = new SimpleDateFormat(
		"HH:mm:ss");

Date now = new Date();

String strDate = sdfDate.format(now);
String strTime = sdfTime.format(now);
String date = strDate + "   " + strTime;   

try
{
	if(comment.equals(""))
	{
	
			%><br/><br/>
			<p align="center" class="style4">Please Enter Your Comment..</p>
			<br/><br/>
			<p align="center"><a href="U_Comment1.jsp?p_Name=<%=p_Name%>"> Back</a></p><%
	
	}
	else
	{	
	
	
			connection.createStatement().executeUpdate("update posts set rank=rank+1 where p_name='"+p_Name+"'");
	
			String sql3="select id from posts where p_name='"+p_Name+"'";
			Statement st3=connection.createStatement();
			ResultSet rs3=st3.executeQuery(sql3);
			if(rs3.next())
			{
				int id=rs3.getInt(1);
						
						
						String sql2="insert into comments(p_name,user,comment,date,p_id) values('"+p_Name+"','"+uname+"','"+comment+"','"+date+"','"+id+"')";
						Statement st2=connection.createStatement();
						int l=st2.executeUpdate(sql2);
					 
					 if(l>0)
					 {
							
								response.sendRedirect("U_Comment1.jsp?p_name="+p_Name+"");
							
					 }
					 else
					 {
							%><br/><br/>
							<p align="center" class="style4">Comment Not Submitted Please Try Again..</p>
							<br/><br/>
							<p align="center"><a href="U_Comment1.jsp?p_name='"+p_Name+"'"> Back</a></p><%
					 
					 }
			
	}}
	}
	  
	catch(Exception e)
	{
		out.print(e);
	}  
		%>

	  </div>
    </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">Home</a></li>
            <li><a href="U_Login.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
  </div>
</div>
<div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
