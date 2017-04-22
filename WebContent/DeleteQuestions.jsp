<%@ page language="java" pageEncoding="ISO-8859-1" import="java.sql.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="ltr" lang="en-US" class="no-js">
<head>
<meta charset="utf-8">
<title>Delete Questions</title>
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
<script type="text/javascript">
function validate()
{
	if(document.delete1.course.value=="-1")
		{
		alert("Please Select a course");
		document.delete1.course.focus();
		return false;
		}
}
</script>
<style>
.ui-menu {
	width: 100px;
}
</style>

</head>
<body id="page3">
<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:orcl" user="my" password="my" />
<sql:query dataSource="${snapshot}" var="result">
Select distinct course from questions 
</sql:query>
												
<div class="bg">
	<div class="main">
		<div class="row-1">
			<h1>
				Online Examination Portal <strong class="slog">Enhance your
					learning skills</strong>
			</h1>
			
						<img src="images/12.jpg" height=100px align="right" style="margin-right:40px;margin-top:-7px"/>
						
		</div>
		<div class="contentadmin" style="background: white;min-height:300px">
			<div>
				<div class="padding" align="center">
					
						<form method="post" action="DeleteQuestions2.jsp" name="delete1" >




							<section id="content" style="width:984px;margin-right:0px">
							
								<div class="padding" align="center">
									<div class="wrapper margin-bot">
									
										<table class="tablemod" style="width: 700px;align:center">
											<tr>
												<td align="center" colspan="4"><h2 style="color:black;margin-left:150px">Delete Question</h2></td>
																						
											</tr>
											
											<tr>
												<td align="Right" style="color:Green">Select Course</td>
												<td colspan="2" align="center">
												<select name="course">
												<option value="-1">Select&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
												<c:forEach var="row" items="${result.rows}">
												<option value="${row.course}">${row.course}</option>
												</c:forEach>
												</select>
												</td>
												
											<tr>
											<tr>
												<td align="Right" style="color:Green">Select Level</td>
												<td colspan="2" align="center">
												<select name="quiz">
												<option value="-1">Select</option>
												<option value="Basic">Basic</option>
												<option value="Intermediate">Intermediate</option>
												<option value="Difficult">Difficult</option>
												</select>
												</td>
												
											<tr>
											<tr>
												<td align="Right" style="color:Green">Select QuestionId</td>
												<td colspan="2" align="center">
												<select name="questionid">
												<option value="-1">Select&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
												<c:forEach var="row" items="${result.rows}">
												<option value="${row.questionid}">${row.questionid}</option>
												</c:forEach>
												</select>
												</td>
												
											<tr>
												<td> <input type="submit" value="Delete" name="button" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left: 150px;width:100px;margin-top:20px" onclick="return (validate())"/></td>
												<td colspan="4"><input type="submit" value="Cancel" name="button" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left: 200px;width:100px;margin-top:20px"></td>
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
