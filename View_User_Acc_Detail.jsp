<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <%@ include file="connect.jsp" %>
 <%@ page import="java.sql.*"%>
 <style type="text/css">
<!--
.style1 {font-size: 36px}
.style4 {color: #FF00FF}
.style5 {color: #FF0000}
-->
 </style>
 <head>
<title>Personal Web Revisitation by Context</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">A Blockchain-Based Approach for Drug Traceability in Healthcare Supply Chain</a><a href="index.html"></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="A_Login.jsp">Admin</a></li>
          <li class="active"><a href="U_Login.jsp">Patient</a></li>
          <li></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="272" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="272" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="272" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="post_body">
	  
	  
	  <div class="sidebar">
        <div class="searchform"></div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Patient</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">Home</a></li>
            <li><a href="U_Login.jsp">Log Out </a></li>
          </ul>
        </div>
      </div>
	  
	  
	  
	  
                      <h2 class="style4">Patient :<span class="style8 style21"> <%=(String)application.getAttribute("uname")%>'s</span> Profile</h2>
                      <h1>&nbsp;</h1>
					  
                      <table width="315" border="2" align="center"  cellpadding="0" cellspacing="0"  >
                       
						
                        <%
						
						String user=(String )application.getAttribute("uname");
						
						String i,s1,s2,s3,s4,s5,s6;
						int j=0;
						 
						try 
						{
						   	String query="select * from account where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString(2);
								s1=rs.getString(3);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								
								
								
								
								
								
					%>
                        <tr>
                          <td  width="145" height="40" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style15 style9 style21" style="margin-left:20px;"><strong>Account Number </strong></div></td>
                          <td  width="164" height="40" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                              <%out.println(i);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td  width="145" height="40" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style15 style9 style21" style="margin-left:20px;"><strong>Patient Name </strong></div></td>
                          <td  width="164" height="40" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                              <%out.println(s1);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td  width="145" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style15 style9 style21" style="margin-left:20px;"><strong>Address</strong></div></td>
                          <td  width="164" height="40" align="left" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                              <%out.println(s2);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td  width="145" height="40" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style15 style9 style21" style="margin-left:20px;"><strong>Email</strong></div></td>
                          <td  width="164" height="40" align="left" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                              <%out.println(s3);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td height="51" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style15 style9 style21" style="margin-left:20px;"><strong>Mobile</strong></div></td>
                          <td height="51" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                              <%out.println(s4);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td height="51" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style15 style9 style21" style="margin-left:20px;"><strong>Branch</strong></div></td>
                          <td height="51" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                              <%out.println(s5);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td   width="145" height="51" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style15 style9 style21" style="margin-left:20px;"><strong>Amount</strong></div></td>
                          <td  width="164" height="51" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left">
                              <div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                                <%out.println(s6);%>
                          </div></td>
                        </tr>
						
						
                        <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
        </table>
                      <p>&nbsp;</p>
					  <p>&nbsp;</p>
					  <p>&nbsp;</p>                
					   <p align="center"  ><a href="Account_Management.jsp">Back</a></p>
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
