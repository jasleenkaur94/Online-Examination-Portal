<%@ page language="java" pageEncoding="ISO-8859-1" contentType="text/html;charset=ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="ltr" lang="en-US" class="no-js">
<head>
<meta charset="utf-8">
<title>Take Test</title>
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
Select distinct course from courses
</sql:query>
<script type="text/javascript">
	function validate()
		{
			if(document.add.course.value=="-1")
		{
		alert("Please select the course ");
		document.add.course.focus();
		return false;
		}
			if(document.add.level.value=="-1")
			{
			alert("Please select the level ");
			document.add.course.focus();
			return false;
			}
			if(document.add.no.value<2||document.add.no.value>20)
			{
			alert("No. of questions must lie between 2 to 20");
			document.add.no.focus();
			return false;
			}
			if(document.add.time.value=="")
			{
			alert("Please enter a time limit");
			document.add.no.focus();
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
			<div>
				<div class="padding" align="center">
					
						<form method="post" action="TakeTest.jsp" name="add" >




							<section id="content" style="width:984px;margin-right:0px">
							
								<div class="padding" align="center">
									<div class="wrapper margin-bot">
									
										<table class="tablemod" style="width: 700px">
											<tr>
												<td align="center" colspan="4"><h2 style="color:black;margin-left:150px">Take Test</h2></td>
																						
											</tr>
											
											<tr>
												<td align="Right" style="color:Green">Select Course</td>
												<td colspan="2" align="center">
												<select name="course">
												<option value="-1">Select&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
												<c:forEach var="row" items="${result.rows}">
												<option value="${row.course}">${row.course}</option>
												</c:forEach>
												</select>
												</td>
												
											</tr>

											<tr>
												<td align="Right"  style="color:Green">Select Level</td>
												<td colspan="2" align="center">
												<select name="level">
												<option value="-1">Select&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
												<option value="Basic">Basic</option>
												<option value="Intermediate">Intermediate</option>
												<option value="Difficult">Difficult</option>
												</select></td>
											</tr>
											<tr>
												<td align="Right"  style="color:Green">No. of Questions</td>
												<td colspan="2" align="center"><input type="text" name="no" width="20px"/></td>
											</tr>
											<tr>
												<td align="Right"  style="color:Green">Time Limit(in minutes)</td>
												<td colspan="2" align="center"><input type="text" name="time" width="20px"/></td>
											</tr>

											
											<tr>
												<td> <input type="submit" value="TEST" name="action" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left: 150px;width:100px;margin-top:20px" onclick="return (validate())"/></td>
												<td colspan="4"><input type="submit" value="CANCEL" name="action" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left: 200px;width:120px;margin-top:20px"></td>
												<td></td>
											</tr>
											</table>
											
		</div>									
											
      </div>
     
    </section>
</form>

			</div>
		</div>
	</div>
</div>
</body>
</html>
