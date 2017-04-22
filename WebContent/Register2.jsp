<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<%String dateofbirth=request.getParameter("day")+"-"+request.getParameter("month")+"-"+request.getParameter("year"); %>
<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:orcl" user="my" password="my"/>
<c:catch var="exception">
<sql:update var="i" dataSource="${snapshot}">
Insert into users values(?,?,?,?,?,?,?,?,?,?)
<sql:param value="${param.username}"></sql:param>
<sql:param value="${param.password}"></sql:param>
<sql:param value="${param.firstname}"></sql:param>
<sql:param value="${param.lastname}"></sql:param>
<sql:param value="${param.email}"></sql:param>
<sql:param value="<%=dateofbirth%>"></sql:param>
<sql:param value="${param.gender}"></sql:param>
<sql:param value="${param.contactnumber}"></sql:param>
<sql:param value="${param.securityquestion}"></sql:param>
<sql:param value="${param.answer}"></sql:param>
</sql:update>
</c:catch>
<c:if test="${i!=null}">
<script type="text/javascript">
alert("Registered Successfully.....");
</script>
</c:if>
<c:if test="${exception!=null}">
<script type="text/javascript">
alert("Username already exist....");
</script>
</c:if>
<jsp:include page="Index.jsp"></jsp:include>
</body>
</html>