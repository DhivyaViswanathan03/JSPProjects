<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import='java.sql.*' %>

    <%!
    
    Connection con=null;
    PreparedStatement pstmt1=null;
    PreparedStatement pstmt2=null;
    
    public void jspInit(){
    	System.out.println("Initialization is called...");
    	ServletConfig config=getServletConfig();
    	String url=config.getInitParameter("jdbcUrl");
    	String username=config.getInitParameter("user");
    	String password=config.getInitParameter("password");
    	try{
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		con=DriverManager.getConnection(url,username,password);
    		pstmt1=con.prepareStatement("insert into employee(`ename`,`eaddr`,`esal`)values(?,?,?)");
    		pstmt2=con.prepareStatement("select * from employee");
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	
    }
    %>
    
    <%
    String option=request.getParameter("s1");
    if(option.equalsIgnoreCase("registration")){
    	String ename=request.getParameter("ename");
    	String eaddr=request.getParameter("eaddr");
    	String esal=request.getParameter("esal");
    	
    	pstmt1.setString(1, ename);
    	pstmt1.setString(2, eaddr);
    	pstmt1.setInt(3, Integer.parseInt(esal));
    	
    	int rowCount=pstmt1.executeUpdate();
    	if(rowCount==1){%>
    		<h1 style='color:green; text-align:center'>Registration success</h1>
    	<% }else{%>
    		<h1 style='color:green; text-align:center'>Registration failed</h1>
    	<% }
    	
    }else{
    	ResultSet rs=pstmt2.executeQuery();
    	%>
    	<html>
    	<body bgcolor='green'>
    	<table border='1'>
    	<tr>
    	<th>EID</th><th>ENAME</th><th>EADDRESS</th><th>ESALARY</th>
    	</tr>
    	
    	<% while(rs.next()){%>
    		
    	<tr><td><%= rs.getInt(1) %></td>
    	<td><%= rs.getString(2) %></td>
    	<td><%= rs.getString(3) %></td>
    	<td><%= rs.getInt(4) %></td></tr>
    	
    	<%}
    	%>
    	</table>
    	</body>
    	</html>
    	
  <%  }%> 
    
    
    <br/><br/>
    
   <h1 style='color:cyan; text-align:center;'><a href='./index.html'>|HOMEPAGE|</a></h1> 
    
    <%!
     public void jspDestroy(){
    	System.out.println("Deinstantiation is called...");
    	try{
    		if(con!=null){
        		con.close();
        	}
    		if(pstmt1!=null){
    			pstmt1.close();
    		}
    		if(pstmt2!=null){
    			pstmt2.close();
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	} 	
    }
    %>
    
    
    