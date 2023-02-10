<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Patient comment...</title>
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
   <h1 class="style2">Comment On <span class="style18"><%=request.getParameter("p_name")%></span> Details</h1>
                <p class="style6">&nbsp;</p>
                <p>
          
 <table width="897" border="2" cellpadding="2" cellspacing="2">
            <tr bgcolor="#0099FF">
              <td width="163" height="30" bgcolor="#FFFFFF"><div align="center" class="style118 style3"><span class="style59">Patient</span></div></td>
              <td width="473" bgcolor="#FFFFFF"><div align="center" class="style118 style3">
                <div align="center"><span class="style59">Comment</span></div>
              </div></td>
              <td width="241" bgcolor="#FFFFFF"><div align="center" class="style118 style3"><span class="style59">Date</span></div></td>
            </tr>
			<%@ include file="connect.jsp"%>
            <%	
			try
			{
			String p_Name="";
			String p_name=request.getParameter("p_name");
			String user=(String)application.getAttribute("uname");
			String query1="select * from comments where p_name='"+p_name+"'";
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while ( rs1.next() )
					   		{
								
								String user1=rs1.getString("user");
								String comment1=rs1.getString("comment");
								String date1=rs1.getString("date");
								
								%>
            <tr>
              <td height="32" bgcolor="#FFFFFF">                <div align="center" class="style124 style3">
                  <%out.println(user1);%>
              </div></td>
              <td bgcolor="#FFFFFF">                <div align="center" class="style124 style3">
                  <%out.println(comment1);%>
              </div></td>
              <td bgcolor="#FFFFFF">                <div align="center" class="style124 style3">
                  <%out.println(date1);%>
              </div></td>
            </tr>
            <%
			  }%>
            <tr>
              <form id="form2" name="form2" method="post" action="U_CommentStatus1.jsp">
                <td height="79" bgcolor="#FFFFFF"><div align="left" class="style40 style10 style62 style26 style47 style3">
                    <div align="center" class="style63 style64">Enter Your Comment </div>
                </div></td>
                <td bgcolor="#FFFFFF"><div align="center" class="style3">
                    <textarea name="comment" cols="50"  style="width:380px;" rows="2"></textarea>
                    <input type="hidden" value="<%=p_name%>" name="p_name"/>
                </div></td>
                <td bgcolor="#FFFFFF"><div align="center" class="style3">
                    <input type="submit" name="Submit" value="Submit" />
                </div></td>
              </form>
            </tr>
            <%
			
			  connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}%>
        </table>
 </p>
                <p>&nbsp;</p>
                <div class="style11">
                  <div align="right"><a href="U_TopKSearch.jsp">Back</a></div>
                </div>
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
