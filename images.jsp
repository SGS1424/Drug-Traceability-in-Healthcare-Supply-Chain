<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ include file="connect.jsp" %>
    <%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	
  	try{  
	     			String value=request.getParameter("value"); 
					

			if(value.equals("user"))
			{
				int id = Integer.parseInt(request.getParameter("id"));
				Statement st=connection.createStatement();
				String strQuery = "select image from user where id='"+id+"' ";
				ResultSet rs = st.executeQuery(strQuery);
				String imgLen="";
				if(rs.next())
				{
					imgLen = rs.getString(1);
				}  
				
				rs = st.executeQuery(strQuery);
				if(rs.next())
				{
					int len = imgLen.length();
					byte [] rb = new byte[len];
					InputStream readImg = rs.getBinaryStream(1);
					int index=readImg.read(rb, 0, len);  
					st.close();
					response.reset();
					response.getOutputStream().write(rb,0,len); 
					response.getOutputStream().flush();        
				}
		
		}
		else if(value.equals("purchimage"))
		{
				String pname=request.getParameter("pname");
				int i=Integer.parseInt(request.getParameter("id")); 
				Statement st=connection.createStatement();
				String strQuery = "select p_image from posts where p_name='"+pname+"' and id='"+i+"' " ;
				ResultSet rs = st.executeQuery(strQuery);
				String imgLen="";
				if(rs.next())
				{
					imgLen = rs.getString(1);
				}  
				
				rs = st.executeQuery(strQuery);
				if(rs.next())
				{
					int len = imgLen.length();
					byte [] rb = new byte[len];
					InputStream readImg = rs.getBinaryStream(1);
					int index=readImg.read(rb, 0, len);  
					st.close();
					response.reset();
					response.getOutputStream().write(rb,0,len); 
					response.getOutputStream().flush();        
				}
		
		}
		else if(value.equals("productimage"))
		{
				int id = Integer.parseInt(request.getParameter("id"));
				Statement st=connection.createStatement();
				String strQuery = "select p_image from posts where  id='"+id+"' " ;
				ResultSet rs = st.executeQuery(strQuery);
				String imgLen="";
				if(rs.next())
				{
					imgLen = rs.getString(1);
				}  
				
				rs = st.executeQuery(strQuery);
				if(rs.next())
				{
					int len = imgLen.length();
					byte [] rb = new byte[len];
					InputStream readImg = rs.getBinaryStream(1);
					int index=readImg.read(rb, 0, len);  
					st.close();
					response.reset();
					response.getOutputStream().write(rb,0,len); 
					response.getOutputStream().flush();        
				}
		
		}
		else if(value.equals("pimage"))
		{
				String pname=request.getParameter("pname");
				String p_id=request.getParameter("p_id");
				Statement st=connection.createStatement();
				String strQuery = "select p_image from posts where  pname='"+pname+"' and id='"+p_id+"'  " ;
				ResultSet rs = st.executeQuery(strQuery);
				String imgLen="";
				if(rs.next())
				{
					imgLen = rs.getString(1);
				}  
				
				rs = st.executeQuery(strQuery);
				if(rs.next())
				{
					int len = imgLen.length();
					byte [] rb = new byte[len];
					InputStream readImg = rs.getBinaryStream(1);
					int index=readImg.read(rb, 0, len);  
					st.close();
					response.reset();
					response.getOutputStream().write(rb,0,len); 
					response.getOutputStream().flush();        
				}
		
		}
		else
		{}
		
		
			
			
		
		
  	}
  	catch (Exception e){
    	out.print(e);
  	}
%>

</body>
</html>