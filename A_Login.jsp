<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Pharmacy_Seller login...</title>
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
.style19 {color: #FF0000; font-weight: bold; }
.style21 {color: #0000FF; font-weight: bold; }
.style6 {color: #FF00FF}
.style29 {color: #009900; font-weight: bold; font-size: 14px; }
.style30 {font-weight: bold}
.style32 {font-size: 36px}
-->
</style>

<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}


}
</script> 
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
        <h1 class="style32">A Blockchain-Based Approach for Drug Traceability in Healthcare Supply Chain</h1>
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
	  
	   <h2 class="style30"><span class="header_01 style6">Welcome to Pharmacy_Seller Login...</span>..</h2>
	   <P>&nbsp;</P>
          <div class="clr"></div>  
        <form name="s" action="Authentication.jsp?value=<%="adminlogin"%>" method="post"  onSubmit="return valid()"  ons target="_top"> 
            <table width="454" border="0" cellpadding="2" cellspacing="2">
              <tr>
                <td width="212" height="62" align="center"><div align="center" class="style29">User Name (required)</div></td>
                <td width="228"><input id="userid" name="userid" type="text" /></td>
              </tr>
              <tr>
                <td height="46" align="center"><div align="center" class="style29">Password (required)</div></td>
                <td><input type="password" id="pass" name="pass" class="text" /></td>
              </tr>
              <tr>
                <td height="44">&nbsp;</td>
                <td><span class="style19">
                  <input name="imageField2" type="submit"  class="LOGIN" id="imageField2" value="Login" />
                </span></td>
              </tr>
            </table>
            <div align="right"><a href="index.html" class="style21" style="text-decoration:underline">Back</a> </div>
        </form>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="A_Login.jsp">Pharmacy_Seller</a></li>
            <li><a href="U_Login.jsp">User</a></li>
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
