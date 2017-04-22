<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Added Successfully...</title>
</head>
<body>
<c:if test="${param.act!='CANCEL'}">	
	<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:orcl" user="my" password="my"/>
	<sql:update dataSource="${snapshot}" var="result">
	update questions set question=?,option1=?,option2=?,option3=?,option4=?,answer=? where course=? and quiz=? and questionid=? 
	<sql:param value="${param.question}"/>
	<sql:param value="${param.option1}"/>
	<sql:param value="${param.option2}"/>
	<sql:param value="${param.option3}"/>
	<sql:param value="${param.option4}"/>
	<sql:param value="${param.answer}"/>
	<sql:param value="${param.course}"/>
	<sql:param value="${param.level}"/>
	<sql:param value="${param.questionid}"/>
	</sql:update>
	
</c:if>
<jsp:forward page="admin.jsp"/>
</body>
</html>