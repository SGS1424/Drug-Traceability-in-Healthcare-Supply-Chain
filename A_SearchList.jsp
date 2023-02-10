<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Comments...</title>
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
.style2 {color: #99CC00}
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
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span>.</span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  
	  <h2 class="style5 style125 style1 style2">View All Comments...</h2>
	  
   <table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
        <tr bgcolor="#99CCCC">
          <td  width="68" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22 style3">SI NO</div></td>
          <td  width="110" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22 style3">Drug Name </div></td>
          <td  width="117" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22 style3">Drug Categorie</div></td>
          <td  width="146" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22 style3">Searched Keyword</div></td>
          <td  width="145" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22 style3">Date</div></td>
		   
        </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						
						try 
						{
						   
							
							String p_Name="",categorie="",keyword="",date="";
							int i=1;
						    
						   	String query="select * from search"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								p_Name=rs.getString(3);
								categorie=rs.getString(4);
								keyword=rs.getString(5);
								date=rs.getString(6);
							int p_id=rs.getInt(7);
					
					%>
            <tr>
              <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style6 style23 style3">&nbsp;</p>
                  <div align="center" class="style23 style3">
                    <div align="center" class="style23">
                    <%out.println(i);%>
                </div>
                  </div></td>
              <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style23 style3">&nbsp;</p>
                  <div align="center" class="style23 style3">
                    <%out.println(p_Name);%>
                </div></td>
              <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style23 style3">&nbsp;</p>
                  <div align="center" class="style23 style3">
                    <%out.println(categorie);%>
                </div></td>
              <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style23 style3">&nbsp;</p>
                  <div align="center" class="style23 style3">
                    <%out.println(keyword);%>
                </div></td>
				<td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style23 style3">&nbsp;</p>
                  <div align="center" class="style23 style3">
                    <%out.println(date);%>
                </div></td>
				
            </tr>
            <%
					i=i+1;	
						
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <tr>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
            </tr>
        </table>
		  
		   <p>&nbsp;</p>
                <div class="style11">
                  <div align="right"><a href="A_Main.jsp">Back</a></div>
               
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
