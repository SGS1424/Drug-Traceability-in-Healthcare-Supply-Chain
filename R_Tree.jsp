<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>R Tree Mapping...</title>
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
	font-size: 36px;
	color: #FF00FF;
	font-style: italic;
}
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
          <li class="active"><a href="U_Login.jsp"><span>User</span></a></li>
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
	  <h2 class="style2" >Search <span class="style4">Drug</span> chain </h2>
	  <%@ include file="connect.jsp" %>
            <%
						int num=1;
			

		  try
		 {
			String sql="select distinct keyword from search_history";
			 Statement st=connection.createStatement();
		 	ResultSet rs=st.executeQuery(sql);			
			while(rs.next())
			{
			String keyword=rs.getString(1);
			%><p class="style12 style5"><%=num+". "+keyword%></p>
		
		<%
			
			
		 String sql2="select result,type,p_id from search_history where keyword='"+keyword+"'";		 		
		  Statement st2=connection.createStatement();
		 ResultSet rs2=st2.executeQuery(sql2);
		 while(rs2.next())
		 {
		  String result=rs2.getString(1);
		  String type=rs2.getString(2);
		 int p_id=rs2.getInt(3);
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="R_TreeContinue.jsp?name=<%=result%>&id=<%=p_id%>"><span class="style15 style7"><%="  "+result%></span> </a></p>
     <%
	 }
	 
		 num++;
	 }
         connection.close();
         }
         catch(Exception e)
         {
         out.println(e.getMessage());
         }
     %>
	 
	 <div align="right"><a href="U_Main.jsp">Back</a></div>
                                </p>
	 
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
