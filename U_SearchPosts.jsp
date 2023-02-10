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

<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.keyword.value;
if(na3=="")

{
alert("Please Enter keyword");
document.s.keyword.focus();
return false;
}
else
{

}
}
</script>


<style type="text/css">
<!--
.style1 {font-size: 36px}
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
  <h1 class="style1">Search <span class="style4">Drug</span> by content keyword </h1>
                <p class="style6">&nbsp;</p>
                <p>  <DIV CLASS="article">
              <H2>&nbsp;</H2>
            
              <form name="s" action="U_SearchPosts.jsp" method="post" onSubmit="return valid()"  ons target="_top">   
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="174"><div align="center" class="header">
                        <div align="right" class="style12">
                          <div align="center">Enter Fuzzy Keyword</div>
                        </div>
                      </div></TD>
                      <TD width="152">
                      <div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <TD width="155"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><div class="style2">
                        <div align="center" class="style13">( searching content Based on Drug Description)</div>
                      </div></TD>
                    </TR>
                  </TABLE>
                </DIV>
                <P>&nbsp; </P>
            </FORM>
          </DIV>
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
				  
				  
				  String user=(String)application.getAttribute("uname");
				 double total=0,found=0;
							try
							{
								String input="",keyword="",p_Name="",p_Categorie="",p_Desc="",p_Desc1="",l_P_Desc1="";
								String strDate="",strTime="",dt="";
								int p_Rank=0,p_id=0;
								
								
								input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								
					
				%>
		<H3>SIMILAR DRUGS</H3>
				<%
				
								String sql="select * from posts";
								Statement st=connection.createStatement();
								ResultSet rs=st.executeQuery(sql);
								while(rs.next())
										{
									int id=rs.getInt(1);
								    p_Name = rs.getString(2);
									p_Categorie = rs.getString(6);
									p_Desc = rs.getString(4);    
									p_Rank = rs.getInt(7);
									   total++;
						   
									   String keyWord = "5765586965748666502846";
										keyWord = keyWord.substring(0, 16);
										byte[] keyValue = keyWord.getBytes();
										Key key = new SecretKeySpec(keyValue, "AES");
										Cipher c2 = Cipher.getInstance("AES");
										c2.init(Cipher.ENCRYPT_MODE, key);
									
									   String decryptedDes= new String(Base64.decode(p_Desc.getBytes()));
									   String des=decryptedDes.toLowerCase();
										String p1=p_Name.toLowerCase();
										String p2=p_Categorie.toLowerCase();
										
										
										if ((p1.contains(keyword))||(p2.contains(keyword))||(des.contains(keyword)))
										{
										 found++ ;
								String sql12="select * from search_history where result='"+p_Name+"' and keyword='"+keyword+"' and user='"+user+"' ";
								Statement st12=connection.createStatement();
								ResultSet rs12=st12.executeQuery(sql12);
								if(rs12.next())
										{
								connection.createStatement().executeUpdate("update search_history set rank=rank+1 where result='"+p_Name+"'   ");
										}  
										else
										{
									   int s_rank=0;
									   String sql6="insert into search_history(user,keyword,type,result,dt,p_id,rank) values('"+user+"','"+keyword+"','"+p_Categorie+"','"+p_Name+"','"+dt+"','"+id+"','"+s_rank+"')";
						Statement st6=connection.createStatement();
						st6.executeUpdate(sql6);
									   
									  }
		
									
										
									%>
                </P>
 </p>
               <p> 
               <div align="center" class="style11"><span class="style4">Drug Name : </span><span class="style15"> <%=p_Name%></span></div></p>
               <p> 
               <div align="center" class="style11"><span class="style4">Drug Categorie</span> <span class="style15"> : <span class="style16"><%=p_Categorie%></span></span></div>
               </p>
                <p>
                <div align="center" class="style11"><span class="style4"> Drugt Rank : </span> <span class="style15"> <%=p_Rank%></span></div></p>
                <p><div align="center" class="style5 style14"><span class="style11">View <a href="U_ViewSearchDetails.jsp?p_Name=<%=p_Name%>&keyword=<%=input%>">Details</a></span></div></p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  	}
							
						 }
				double ratio=0;
	 				ratio=(found*100)/total;
					
					String sql12="select * from searchratio where keyword='"+keyword+"' ";
								Statement st12=connection.createStatement();
								ResultSet rs12=st12.executeQuery(sql12);
								if(rs12.next())
										{
										String strQuery2 = "update searchratio set ratio='"+ratio+"'";
								connection.createStatement().executeUpdate(strQuery2);
					}
					else{
  String sql1="insert into searchratio(keyword,found,total,ratio,dt)values('"+keyword+"','"+(int)found+"','"+(int)total+"','"+ratio+"','"+dt+"')";
				Statement st1=connection.createStatement();
			st1.executeUpdate(sql1);	
					}
			%>	
			
			<h2 align="right"><span class="style4">Drug</span> Search Ratio=<%=(int)found%>:<%=(int)total%></h2>
			<p>&nbsp;</p>
					<h3>NON SIMILAR <span class="style4">Drug</span></h3>
			
			<%			
						
						
								String sql8="select * from posts";
								Statement st8=connection.createStatement();
								ResultSet rs8=st8.executeQuery(sql8);
								while(rs8.next())
										{
									int id=rs8.getInt(1);
								    p_Name = rs8.getString(2);
									p_Categorie = rs8.getString(6);
									p_Desc = rs8.getString(4);    
									p_Rank = rs8.getInt(7);

						   
									   String keyWord = "5765586965748666502846";
										keyWord = keyWord.substring(0, 16);
										byte[] keyValue = keyWord.getBytes();
										Key key = new SecretKeySpec(keyValue, "AES");
										Cipher c2 = Cipher.getInstance("AES");
										c2.init(Cipher.ENCRYPT_MODE, key);
									
									   String decryptedDes= new String(Base64.decode(p_Desc.getBytes()));
									   String des=decryptedDes.toLowerCase();
										String p1=p_Name.toLowerCase();
										String p2=p_Categorie.toLowerCase();
										
										
										if ((p1.contains(keyword))||(p2.contains(keyword))||(des.contains(keyword)))
										{
								
		                                     }
									else
									{
										
									%>
                </P>
 </p>
               <p> <div align="center" class="style11"><span class="style4">Drug Name : </span><span class="style15"> <%=p_Name%></span></div></p>
               <p> 
               <div align="center" class="style11"><span class="style4">Drug Categorie</span> <span class="style15"> : <span class="style16"><%=p_Categorie%></span></span></div>
               </p>
                <p><div align="center" class="style11"><span class="style4">Drug Rank : </span> <span class="style15"> <%=p_Rank%></span></div></p>
                <p><div align="center" class="style5 style14"><span class="style11">View <a href="U_ViewSearchDetails.jsp?p_Name=<%=p_Name%>&keyword=<%=input%>">Details</a></span></div></p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  	}
							
						 }
				
				
						
					}catch(Exception e){						  
						e.printStackTrace();
					}
						  
				%>
                <p>&nbsp;</p>
                <div class="style11">
                  <div align="right"><a href="U_Main.jsp">Back</a></div>
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
