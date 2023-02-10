<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Posts...</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>


<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.categorie.value;
if(na3=="")

{
alert("Please Choose Categorie");
document.s.categorie.focus();
return false;
}
else
{

}
var na4=document.s.name.value;
if(na4=="")

{
alert("Please Enter product name");
document.s.name.focus();
return false;
}

var na4=document.s.price.value;
if(na4=="")

{
alert("Please Enter Price");
document.s.price.focus();
return false;
}

var na4=document.s.desc.value;
if(na4=="")

{
alert("Please Enter Description");
document.s.desc.focus();
return false;
}
var na4=document.s.image.value;
if(na4=="")

{
alert("Please Enter Image");
document.s.image.focus();
return false;
}

}
</script> 


<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {color: #FF0000}
.style3 {color: #FF0000; font-weight: bold; }
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
      <div class="mainbar">
                        <p>
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
				<%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select categorie FROM categories"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("categorie"));
		
	   }
	   
		
		
%>

<form name="s" method="post" enctype="multipart/form-data" action="A_AddProductConf.jsp" onSubmit="return valid()"  ons target="_top">
 
  <table width="405" border="0" align="center">
    <tr>
      <td width="165" height="33" bgcolor="#FFFFFF"><div align="center" class="style3"><span class="style4 style8 style2">Select the Categorie </span></div></td>
      <td width="230"><label>
        <select id="s1" name="categorie">
         <option>--Select--</option>
        <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
           <option><%= a1.get(i)%></option>
           
           <%}%>
        </select>
      </label></td>
    </tr>
	 
    <tr>
      <td height="36" bgcolor="#FFFFFF"><div align="center" class="style3"><span class="style4 style8 style2"> Drug Name </span> </div></td>
      <td><label>
        <input type="text" id="t1" name="name">
      </label></td>
    </tr>
	
	 <tr>
      <td height="35" bgcolor="#FFFFFF"><div align="center" class="style3"><span class="style4 style8 style2">Drug Price </span></div></td>
      <td><label>
        <input type="text" id="t3" name="price">
      </label></td>
    </tr>
    <tr>
      <td height="51" bgcolor="#FFFFFF"><div align="center" class="style3"><span class="style4 style8 style2"> Drug Description </span></div></td>
      <td><label>
        <textarea name="desc" id="t2"></textarea>
      </label></td>
    </tr>
   
   
  
    <tr>
      <td height="38" bgcolor="#FFFFFF"><div align="center" class="style3"><span class="style4 style8 style2">  Add Drug Image </span></div></td>
      <td><input type="file" id="userImage" name="image" style="width:100%"  ></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="26">
        <div align="right">
          <input type="submit" name="Submit" value="Add Post">
        </div>      </td>
      <td></td>
    </tr>
  </table>
</form>
<%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		  </p>
                <p>&nbsp;</p>
                <div align="right" class="style7"><a href="A_Main.jsp">Back</a></div>
                <p></p>
      </div><!-- End Of Right -->
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
