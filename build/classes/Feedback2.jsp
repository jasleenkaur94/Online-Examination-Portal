<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%String username=(String)session.getAttribute("username"); %>
<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:orcl" user="my" password="my" />
<sql:update dataSource="${snapshot}" var="result">
insert into feedback values(?,?,?)
<sql:param value="<%=username %>"/>
<sql:param value="${param.rating}"/>
<sql:param value="${param.response}"/>
</sql:update>


</body>
</html>