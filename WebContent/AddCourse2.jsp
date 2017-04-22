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
<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:orcl" user="my" password="my"/>
<sql:update dataSource="${snapshot}" var="result">
Insert into courses values(?,'Basic',?)
<sql:param value="${param.course}"/>
<sql:param value="${param.description}"/>
</sql:update>
<sql:update dataSource="${snapshot}" var="result2">
Insert into courses values(?,'Intermediate',?)
<sql:param value="${param.course}"/>
<sql:param value="${param.description}"/>
</sql:update>
<sql:update dataSource="${snapshot}" var="result3">
Insert into courses values(?,'Difficult',?)
<sql:param value="${param.course}"/>
<sql:param value="${param.description}"/>
</sql:update>
<c:choose>

<c:when test="${result!=null }">
Success
</c:when>
<c:otherwise>
Error
</c:otherwise>
</c:choose>

</body>
</html>