<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Posts...</title>
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
.style2 {font-size: 36px; color: #FFFFFF; }
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
          <li class="active"><a href="A_Login.jsp"><span>Pharmacy_Seller</span></a></li>
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
	
	<h2 class="style2"> View Drug Traceability in Healthcare Supply Chain</h2>
      <div class="style11">
                  <div align="right"><a href="A_Main.jsp">Back</a></div>
        </div>
		  <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>                         

		  
		  
         <%
					  
						// Creation Of Blockchain 
						
						String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,hsign;
						int i=0,j=1,k=0;
												
						int count1=1;
						
						try 
						{
						String str1 = " select distinct(hash_Code) from categories ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						hsign = rs1.getString(1);
						count1=count1+1;
						   	String query="select * from posts where hash_Code = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							s1=rs.getString(6);
							
							%>
		
		  <p>&nbsp;
        </p>
	    <table width="601" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr bgcolor="#99FF99">
              <td  width="47" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style3">SI NO</div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style3">Drug_Image</div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style3">Drug_Name</div></td>
			  <td  width="112" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style3">Drug Price</div></td>
			  <td  width="114" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style3">Drug Categorie</div></td>
              <td  width="82" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style3">Drug Rank</div></td>
          </tr>
			
			<h3><p class="style4">Drug Block Chain ::<span class="style5"> <%=s1%></span><br>Under Category Hash Code    ::<%=hsign%></p></h3>
			
			<%
							
							}
			 					 i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(6);
								s4=rs.getString(7);
					%>
          <tr>
              <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style4 style5 style3">&nbsp;</p>
                  <div align="center" class="style22 style4 style5 style3">
                   
                      <%out.println(i);%>
                    
                    <p>&nbsp; </p>
                  </div></td>
				  
              <td width="116" rowspan="1" bgcolor="#FFFFFF" ><div class="style22 style4 style5 style3" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="post_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;"  />
              </a> </div></td>
			  <td height="0"  valign="baseline" bgcolor="#000000"><p class="style22 style4 style5 style3">&nbsp;</p>
                  <div align="center" class="style22 style4 style5 style3">
                   
                      <span class="style8">
                      <a href="A_ViewAllPostsConti.jsp?name=<%=s1%>&id=<%=i%>">
                      <%out.println(s1);%>
                      </a></span>
                      <p>&nbsp; </p>
              </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style4 style5 style3">&nbsp;</p>
                  <div align="center" class="style22 style4 style5 style3">
                  
                      <%out.println(s2+"/- Rs");%>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style4 style5 style3">&nbsp;</p>
                  <div align="center" class="style22 style4 style5 style3">
                    
                      <%out.println(s3);%>
                  
                    <p>&nbsp; </p>
                  </div></td>
				  
				   <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style4 style5 style3">&nbsp;</p>
                  <div align="center" class="style22 style4 style5 style3">
                    
                      <span class="style8">
                      <%out.println(s4);%>
                      </span>
                      <p>&nbsp; </p>
                  </div></td>
            </tr>
            <%
					i=i+1;
					}
						}
		}
		
catch(Exception e)
{
out.print(e);
}   
		   		 		  
%>		
		  
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
