<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Patient Profile...</title>
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
.style2 {
	font-size: 36;
	color: #FF00FF;
}
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
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li><a href="U_Login.jsp"><span>Patient</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="searchform"></div>
      <div class="logo">
        <h1 class="style1">A Blockchain-Based Approach for Drug Traceability in Healthcare Supply Chain</h1>
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
	  
	  
	  <h2 class="style5 style2">  Patient<span class="style62"> <%=(String)application.getAttribute("uname")%></span>'s Profile .. </h2>
	  <p>&nbsp;</p>
        <table width="533" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%
						
						String user=(String )application.getAttribute("uname");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(7);
								s5=rs.getString(8);
								s6=rs.getString(10);
								

					%>
            <tr>
              <td width="226" rowspan="7" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="images.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:200px; height:200px;" />
              </a></strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="37" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style3" style="margin-left:10px;"><strong>E-Mail</strong></div></td>
              <td  width="158" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><div align="left" class="style40 style10 style62 style3" style="margin-left:10px;"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="40" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style3" style="margin-left:10px;"><strong>Mobile</strong></div></td>
              <td  width="158" valign="middle" bgcolor="#FFFFFF" ><div align="left" class="style40 style10 style62 style3" style="margin-left:10px;"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
            </tr>
            <tr>
              <td height="43" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style3" style="margin-left:10px;"><strong>Address</strong></div></td>
              <td align="left" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style40 style10 style62 style3" style="margin-left:10px;"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="43" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style3" style="margin-left:10px;"><strong>Location</strong></div></td>
              <td  width="158" align="left" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style40 style10 style62 style3" style="margin-left:10px;"><strong>
                  <%out.println(s4);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="47" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style3" style="margin-left:10px;"><strong>Date of Birth</strong></div></td>
              <td  width="158" align="left" valign="middle" bgcolor="#FFFFFF" ><div align="left" class="style40 style10 style62 style3" style="margin-left:10px;"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
            </tr>
            <tr>
              <td   width="141" height="44" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style15 style42 style61 style60 style3" style="margin-left:10px;"><strong>Status</strong></div                        ></td>
              <td  width="158" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left">
                  <div align="left" class="style10 style62 style3" style="margin-left:10px;"><strong>
                    <%out.println(s6);%>
              </strong></div></td>
            </tr>
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
        </table>
		  
		  
		  <div class="style11">
                  <div align="right"><a href="U_Main.jsp">Back</a></div>
               
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
