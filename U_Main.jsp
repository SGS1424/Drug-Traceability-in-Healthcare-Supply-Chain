<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Patient Main Page...</title>
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
.style2 {	color: #FFFFFF;
	font-size: 12px;
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
          <li class="active"><a href="U_Login.jsp"><span>Patient</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="searchform"></div>
      <div class="logo">
        <h1><a href="index.html" class="style1">A Blockchain-Based Approach for Drug Traceability in Healthcare Supply Chain</a><a href="index.html"></a></h1>
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
	  
	   <h2 class="style5">Welcome  Patient<span class="style6"> :: <%=(String)application.getAttribute("uname")%></span>.. </h2>
	   <p class="style5">&nbsp;</p>
	   <p class="style5"><img src="images/img1.jpg" width="570" height="206" /></p>
	   <p align="center" class="style5"><span class="style2">Healthcare supply chains are complex structures spanning across multiple organizational and geographical boundaries, providing critical backbone to services vital for everyday life. The inherent complexity of such systems can introduce impurities including inaccurate information, lack of transparency and limited data provenance. Counterfeit drugs is one consequence of such limitations within existing supply chains which not only has serious adverse impact on human health but also causes severe economic loss to the healthcare industry. Consequently, existing studies have emphasized the need for a robust, end to- end track and trace system for pharmaceutical supply chains. Therein, an end-to-end product tracking system across the pharmaceutical supply chain is paramount to ensuring product safety and eliminating counterfeits. Most existing track and trace systems are centralized leading to data privacy, transparency and authenticity issues in healthcare supply chains. In this paper, we present an Ethereum blockchain-based approach leveraging smart contracts and decentralized off-chain storage for efficient product traceability in the healthcare supply chain. The smart contract guarantees data provenance, eliminates the need for intermediaries and provides a secure, immutable history of transactions to all stakeholders. We present the system architecture and detailed algorithms that govern the working principles of our proposed solution. We perform testing and validation, and present cost and security analysis of the system to evaluate its effectiveness to enhance traceability within pharmaceutical supply chains.</span></p>
	   <p class="style5">&nbsp;</p>
	   <p class="style5">&nbsp;</p>
      </div>
      <div class="sidebar">
         <div class="clr"></div>
        <div class="gadget">
          <h2 class="star">Patient Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">Home</a></li>
            <li><a href="U_Profile.jsp">My Profile</a></li>
            <li><a href="Account_Management.jsp">Account Management</a></li>
            <li><a href="U_SearchPosts.jsp">Search Drugs and Purchase</a></li>
            <li><a href="U_SearchHistory.jsp">View my search History </a></li>
            <li><a href="R_Tree.jsp">View Drugs by Chain Tree</a></li>
			<li><a href="U_OtherComment.jsp">View Other Patient Comments On Drugs</a></li>
            <li><a href="U_TopKSearch.jsp">View Top K Drugs Purchase</a></li>
			<li><a href="U_TopKQuery.jsp">View Top K Query Details</a></li>
            <li><a href="index.html">Log Out </a></li>
          </ul>
       
      </div>
      <div class="clr"></div>
    </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
     
      <p class="rf"></a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div></body>
</html>
