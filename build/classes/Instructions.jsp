<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="ltr" lang="en-US" class="no-js">
<head>
<meta charset="utf-8">
<title>Instructions</title>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery.ui.core.js"></script>
<script src="js/jquery.ui.widget.js"></script>
<script src="js/jquery.ui.position.js"></script>
<script src="js/jquery.ui.menu.js"></script>

<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen">
<script>
	$(function() {
		$("#menu").menu();
	});
</script>
<style>
.ui-menu {
	width: 100px;
}
</style>
<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:orcl" user="my" password="my" />
<sql:query dataSource="${snapshot}" var="result">
Select * from instructions
</sql:query>

<script type="text/javascript">
	function validate()
		{
			if(!document.add.check.checked)
		{
		alert("Please check the checkbox");
		document.add.check.focus();
		return false;
		}
		}

</script>
</head>
<body id="page3">
<div class="bg">
	<div class="main">
		<div class="row-1">
			<h1>
				Online Examination Portal <strong class="slog">Enhance your
					learning skills</strong>
			</h1>
			
						<img src="images/12.jpg" height=100px align="right" style="margin-right:40px;margin-top:-7px"/>
						
		</div>
		<div class="contentadmin" style="background: white;">
				<form method="post" action="ProceedTest.jsp" name="add" onsubmit="return(validate())">
	
										<center><h2><u>Instructions</u></h2></center>
										
											
										<div style="margin-left: 10px;color: maroon;">	
											<c:forEach items="${result.rows}" var="row">
											
											<c:out value="${row.id}. "/><c:out value="${row.instruction}."/><br>
								
											</c:forEach>
											<br>
											<table>		
											<tr><td colspan="4" style="color:black"><input type="checkbox" align="center" name="check">I Agree</td></tr>
											<tr>
												<td colspan="4"><input type="submit" value="Proceed To Test" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left: 410px;width:200px;margin-top:20px"></td>
											</tr>
											</table>
											</div>

</form>
	</div>
</div>
</body>
</html>
