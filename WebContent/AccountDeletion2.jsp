    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*, java.util.*" %>
  
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
  <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Examination Portal|Register User Database</title>
</head>
<body>
<%String dateofbirth=request.getParameter("day")+"-"+request.getParameter("month")+"-"+request.getParameter("year"); %>
<c:catch var="exception">
	<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:orcl" user="my" password="my"/>
	<sql:update dataSource="${snapshot}" var="result">
 	

 	delete from users where firstname=? and lastname=? and email=? and securityquestion=? and answer=? and dateofbirth=?
 	<sql:param value="${param.firstname}"/>
 	<sql:param value="${param.lastname}"/>
 	<sql:param value="${param.email}"/>
 	<sql:param value="${param.securityquestion}"/>
 	<sql:param value="${param.answer}"/>
 	<sql:param value="<%=dateofbirth %>"/>
 	
 	
 	</sql:update>
	
	
	</c:catch>
	<c:if test="${result!=0}">
	<script type="text/javascript">
	alert("Account deleted successfully....");
	</script>
	<jsp:include page="Online_Exam.jsp"/>
	</c:if>
	
	<c:if test="${exception!=null}">
	<script type="text/javascript">
	alert("Some of the information provided is incorrect");
	</script>
	<jsp:include page="AccountDeletion.jsp"/>
	</c:if>
	
	    
</body>
</html>
		       