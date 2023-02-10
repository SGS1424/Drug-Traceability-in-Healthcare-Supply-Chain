<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Posts...</title>
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
.style2 {font-size: 36; }
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
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>Patient</span></a></li>
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
   <h2 class="style2">Searched <span class="style4">Drug</span> <span class="style18"><%=request.getParameter("p_Name")%></span> Details</h2>
                <p class="style6">&nbsp;</p>
                <p>
				
				<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
    <%
      	try 
	{
           String p_Name="",Keyword="",user="",p_Desc="",p_Desc1="",categorie="",rec_By="",rec_Details="",rec_date="";
	       String strDate="",strTime="",dt="";
		   int p_Rank = 0,p_Price=0,i = 0;
		   
		    p_Name = request.getParameter("p_Name");
			Keyword = request.getParameter("keyword");
			
		    user = (String)application.getAttribute("uname");
		  
		   String str="select * from posts where p_name='"+p_Name+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(str);
		   
	if ( rs.next() )
	   {
		i = rs.getInt(1);
		p_Price = rs.getInt(3);
		p_Desc = rs.getString(4);
		categorie = rs.getString(6);
		p_Rank = rs.getInt(7);
		
		
		  SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		  SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

		   Date now = new Date();

		   strDate = sdfDate.format(now);
		   strTime = sdfTime.format(now);
		   dt = strDate + "   " + strTime;
		   
	
		String keyWord = "5765586965748666502846";
		keyWord = keyWord.substring(0, 16);
		byte[] keyValue = keyWord.getBytes();
		Key key = new SecretKeySpec(keyValue, "AES");
		Cipher c2 = Cipher.getInstance("AES");
		c2.init(Cipher.ENCRYPT_MODE, key);
	    String ec = new String(Base64.encode(keyWord.getBytes()));
		 p_Desc1 = new String(Base64.decode(p_Desc.getBytes()));
									
	    
		Statement st32 = connection.createStatement();
		 String query32 ="update search_history set rank=rank+1 where p_id='"+i+"' and keyword='"+Keyword+"' and result='"+p_Name+"' ";
		st32.executeUpdate (query32);
	
%>
          </p>
          
 <table border="1" align="center" cellpadding="0" cellspacing="0" >
				 				<tr >
								    <td width="160" rowspan="7" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > 
									    <div align="center"><a class="#" id="img1" href="#" >
		                                <input  name="image" type="image" src="post_Pic.jsp?id=<%=i%>" style="width:120px; height:120px;"  />
								                                  </a> </div>
								  </div></td>
								  	<td width="187" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style3"><span class="style17"><span class="style4">Drug</span> Name</span> </div></td>
							      <td width="72" bgcolor="#FFFFFF"><div align="center" class="style3"><span class="style17"><%= p_Name%></span></div></td>
		  						<tr/>
				    
				    
				    			<tr>
									<td width="187" height="27" bgcolor="#FFFFFF">
						  		  <div align="center" class="style3"><span class="style17"><span class="style4">Drug</span> Categorie</span> </div></td>
							      <td bgcolor="#FFFFFF"><div align="center" class="style3"><span class="style17"><%= categorie%></span></div></td>
								</tr>
								<tr>
									<td width="187" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style3"><span class="style17"><span class="style4">Drug</span> Rank </span> </div></td>
							      <td bgcolor="#FFFFFF"><div align="center" class="style3"><span class="style17"><%= p_Rank%></span></div></td>
				    			</tr>
								<tr>
										<td width="187" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style3"><span class="style17"><span class="style4">Drug</span> Description </span></div></td>
						          <td bgcolor="#FFFFFF"><div align="center" class="style3"><span class="style17"><%= p_Desc1%></span></div></td>
								</tr>
								<tr>
										
								        <td><div align="center"><span class="style17" style="color:#000000;"><a href="U_Comment2.jsp?p_name=<%=p_Name%>">Comment</a></span></div></td>
								</tr>
								<tr>
										
								        <td><div align="center"><span class="style17" style="color:#000000;"><a href="Buy_Verification.jsp?p_name=<%=p_Name%>&id=<%=i%> ">BUY</a></span></div></td>
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
 </p>
                <p>&nbsp;</p>
                <div class="style11">
                  <div align="right"><a href="U_TopKQuery.jsp">Back</a></div>
                </div>
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
