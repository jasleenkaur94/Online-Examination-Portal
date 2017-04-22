     <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*, java.util.*" %>
  
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Examination Portal|Register User Database</title>
</head>
<body>

<%  
	boolean flag=false;
	  String afname,alname,aemail,asecQ,asecA;	
	  String fname=request.getParameter("fname"); 
	  String lname=request.getParameter("lname");
      String email=request.getParameter("email");
      String secQ=request.getParameter("security_q"); 
      String secA=request.getParameter("security_a");
      
      try
      {
    	   
    	     	  
    	 Connection conn=(Connection)application.getAttribute("DatabaseConnection");
    	 Statement s=conn.createStatement();  
         s.execute("select *from onlineLogin");     
         ResultSet rs=s.getResultSet();     
         while(rs.next()) 
         {
        	  afname=rs.getString("fname"); 
       	 	  alname=rs.getString("lname");
              aemail=rs.getString("email");
              asecQ=rs.getString("security_q"); 
              asecA=rs.getString("security_a");
         
              if(fname.equals(afname)&&lname.equals(alname)&&email.equals(aemail)&&secQ.equals(asecQ)&&secA.equals(asecA))
              {
		s.executeQuery("select upass from onlineLogin");
		flag=true;  
        break;
        }
         }
      	
      }
      catch(Exception e)
      {
    	  System.out.println(e);
      }
    %>
    
    
    
</body>
</html>
		       