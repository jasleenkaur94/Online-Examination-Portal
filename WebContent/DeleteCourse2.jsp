<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deleted Successfully...</title>
</head>
<body>
<c:if test="${param.button=='Delete'}">
<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:orcl" user="my" password="my"/>
<sql:update dataSource="${snapshot}" var="result">
delete from questions where course=?
<sql:param value="${param.course}"/>
</sql:update>
<sql:update dataSource="${snapshot}" var="result">
delete from courses where course=?
<sql:param value="${param.course}"/>
</sql:update>
<c:if test="${result!=null}">
<script type="text/javascript">
alert("Deleted Successully.......");
</script>
</c:if>
</c:if>
<jsp:include page="admin.jsp"/>
</body>
</html>