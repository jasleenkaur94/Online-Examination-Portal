<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,pack.Questions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title>Modify Question</title>
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
.ui{
	margin-left:70px ;
}
.wi{
	width:0.5cm;
}
.re{
width:2cm;
}
.view{
margin-right:90px;
color: captiontext;
}



</style>
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
			<%	int correct_answers=0;
						ArrayList<Questions> q=(ArrayList)session.getAttribute("Questions");
						ArrayList<String> a=(ArrayList)session.getAttribute("Answers");
						ArrayList<String> result=new ArrayList<String>();
						int count=Integer.valueOf(session.getAttribute("count").toString());
						int number=Integer.valueOf(session.getAttribute("Number").toString());
						for(int i=0;i<count;i++)
							{
							String str1=q.get(i).getAnswer();
							String str2=a.get(i);
								if(str1.equals(str2))
								{
								result.add("Correct");
								correct_answers++;
								}
								else
								{
								result.add("Incorrect");
								}
							}
					%>
				<h2 align="center">
					Result</h2>
					<div class="ui">
					
						<b><i><u style="color:red;">
							Score :
							<span style="color:green;"><%=(correct_answers*100)/number %>%</span>
						</u></i></b>
						<a href="user.jsp" class="view" style="margin-left:882px" >Home</a>
						<br>
						<b><i><u style="color:red;">
							Correct Answers :
							<span style="color:green"><%=correct_answers%></span>
						</u></i></b>
						<a href="admin.jsp" class="view" style="margin-left:857px" >FeedBack</a>
						<br>
						<b><i><u style="color:red;">
							No. of Attempted Questions :
							<span style="color:green"><%=count%> out of <%=number %></span>
						</u></i></b>
					<br>
					<br>
					<table style="width:920px " border="1">
						<tr>
						<td class="wi" style="color:maroon;font-size: large;">Q.No.</td>
						<td style="color:maroon;font-size: large;">Question</td>
						<td class="re" style="color:maroon;font-size: large;">Result</td>
						
						</tr>  
					<%for(int i=0;i<count;i++)
						{
						 %>
						<tr>
						<td class="wi" style="color:black"><%=i+1 %></td>
						<td  style="color:black"><%=q.get(i).getQuestion() %></td>
						<td class="re" style="color:black"><%=result.get(i) %>
						</tr>
						<%  }%>
						</table>
						<br>
						</div>
			</div>

			</div>
		</div>
</div>
</body>
</html>
