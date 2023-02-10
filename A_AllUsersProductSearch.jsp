<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All User's Search...</title>
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
.style2 {color: #FFFFFF}
.style3 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="A_Login.jsp"><span>Pharmacy_Seller</span></a></li>
          <li><a href="U_Login.jsp"><span>User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="searchform"></div>
      <div class="logo">
        <h1><a href="index.html" class="style1">A Blockchain-Based Approach for Drug Traceability in Healthcare Supply Chain</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	<table width="426" border="2" align="left" >
                                  <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
                                  <%@ page import="java.sql.*"%>
                                  <%@ include file="connect.jsp" %>
                                  <%@ page import="java.util.Date" %>
                                  <%@ page import="java.util.Scanner" %>
                                  <%
		
		
		String s1,s2,i1,i2;
		int m=0,n=0;
		
		
		try{
			String sql="select distinct user,type from search_history";
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			{
				String uname=rs.getString(1);
				String type=rs.getString(2);
				
				%>
			 <tr>
				<td colspan="3"><div align="center" class="style2"><span class="style8">Drugs Searched Result of </span><span class="style19"> <strong> <%=uname%></strong> </span></div></td>
			</tr>
              <%

				
			String sql1="select distinct(result) from search_history where user='"+uname+"' and type='"+type+"' ";
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(sql1);
			while(rs1.next())
			{
			//String type=rs1.getString(1);
			String result=rs1.getString(1);
			
			String sql2="select id from posts where p_name='"+result+"'";
			Statement st2=connection.createStatement();
			ResultSet rs2=st2.executeQuery(sql2);
			if(rs2.next())
			{
				int i=rs2.getInt(1);
			%>
             <tr>
			   <td width="171" bgcolor="#FFFFFF"><input  name="image" type="image" style="width:100px; height:100px;" src="post_Pic.jsp?id=<%=i%>" align="middle"/></td>
                  <td  width="237" height="30" align="center" valign="middle" bgcolor="#FFFFFF"> <a href="A_AllUserProductSearch1.jsp?name=<%=result%>" class="style3"> 
               <%out.print(result);%> </a></td>
	      </tr>
			<%	}}}
			
				connection.close();
		   }
		  
		   catch(Exception e)
		    {
            out.println(e.getMessage());
          }%>
        </table>
       <p align="right"><a href="A_Main.jsp" class="style53 style54 style56 style66 style3 style50"></a></p>
	  </div>
		  
    </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="A_Main.jsp">Home</a></li>
            <li><a href="A_Login.jsp">Logout</a></li>
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
