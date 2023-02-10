<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Personal Web Revisitation by Context</title>
<%@ include file="connect.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
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
      <div class="logo">
        <h1 align="center"><a href="index.html" class="style1">A Blockchain-Based Approach for Drug Traceability in Healthcare Supply Chain</a><a href="index.html"></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="A_Login.jsp">Pharmacy_Seller</a></li>
          <li><a href="U_Login.jsp">User</a></li>
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
      <div class="mainbar">
       
	   
	   
	   
	   
	   
	   
	    <div class="article">
	      <h1 class="style2">Purchased Drugs.. </h1>
        </div>
        <div class="article">
		
		
		<table width="545" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
            <tr>
              <td width="108" height="30" bgcolor="#FFFFFF"><div align="center" class="style3 style25 style21"><strong>id</strong></div></td>
              <td width="171" bgcolor="#FFFFFF"><div align="center" class="style3 style26"><strong> Drug name </strong></div></td>
              <td width="183" bgcolor="#FFFFFF"><div align="center" class="style3 style26"><strong>User</strong></div></td>
              <td width="171" bgcolor="#FFFFFF"><div align="center" class="style3 style26"><strong>Date</strong></div></td>
			  <td width="171" bgcolor="#FFFFFF"><div align="center" class="style3 style26"><strong>Image</strong></div></td>
		      <td width="171" bgcolor="#FFFFFF"><div align="center" class="style3 style26"><strong>Price</strong></div></td>
			    
              <%	  
			  
			  
	String s1="",s2="",s3="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0,p_id,s4=0;
	long sum=0;
      	try 
	{
	
      		String query="select * from buy "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		p_id=rs.getInt(4);
		s3=rs.getString(5);
		s4=rs.getInt(6);
		
		%>
            </tr>
            <tr>
              <td height="28" bgcolor="#FFFFFF"><div align="center" class="style25 style3"><%=i%></div></td>
              <td height="28" bgcolor="#FFFFFF"><div align="center" class="style25 style3"><%=s1%></div></td>
              <td height="28" bgcolor="#FFFFFF"><div align="center" class="style25 style3"><%=s2%></div></td>
              <td height="28" bgcolor="#FFFFFF"><div align="center" class="style25 style3"><%=s3%></div></td>
			  <td width="229" bgcolor="#FFFFFF"><div class="style3" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="images.jsp?value=<%="purchimage"%>&pname=<%=s1%>&id=<%=p_id%>" style="width:50px; height:50px;" />
              </div></td>
			   <td height="28" bgcolor="#FFFFFF"><div align="center" class="style25 style3"><%=s4%></div></td>
		    </tr>
			   <%	  }	
			   
			   					String sql1="SELECT * FROM buy";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								
								while(rs1.next()==true)
								{
										
										int pprice=Integer.parseInt(rs1.getString(6));
			   
			   										
													sum=sum+pprice;
										
			  					 }
			   
			  

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
		 
			   <form >
			   <h2 align="center"> <% out.print("The Total Amount of Purchased is  "+sum);%></h2>
			   </form>
			   											
														   
				
		<div align="right"> <a href="A_Main.jsp" > Back </a>  </div>
		
		</div>
      </div>
      <div class="sidebar">
        <div class="searchform"></div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Pharmacy_Seller</span> Menu</h2>
          <ul class="sb_menu">
            
            <li><a href="A_Main.jsp">Home</a></li>
            <li><a hre="A_Login.jsp">Log Out </a></li>
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
