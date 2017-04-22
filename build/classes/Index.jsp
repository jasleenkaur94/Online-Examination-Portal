<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<title>Online Examination Portal</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>
<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>
<body id="page1">
<!-- header -->
<div class="bg">
  <div class="main">
      <header>
      <div class="row-1">
        <h1> Online Examination Portal <strong class="slog">Enhance your learning skills</strong> </h1>
       
      </div>
      <div class="row-2">
        <nav>
          <ul class="menu">
            <li><a class="active" href="Index.jsp">Home Page</a></li>
            <li><a href="Online_Exam.jsp">Online Examination</a></li>
            <li><a href="Register.jsp">Registration</a></li>
            <li class="last-item"><a href="Contacts.jsp">Contact Us</a></li>
          </ul>
        </nav>
      </div>
    <div class="row-3">
        <div class="slider-wrapper" align="center">
        <div class="prev">
          </div>
          <div class="slider">
           <img src="images/1.jpg" alt=""> 
          <img src="images/2.jpg" alt=""> 
	      <img src="images/3.jpg" alt=""> 
          </div>
          <div class="next">
          </div>
        </div>
      </div>
    </header>
   
    <!-- footer -->
    <footer>
      <div class="row-top">
        <div class="row-padding">
          <div class="wrapper">
            <div class="col-1">
              <h4>Address:</h4>
              <dl class="address">
                <dt><span>Country:</span>India</dt>
                <dd><span>City:</span>Delhi</dd>
                <dd><span>Address:</span>C-11 Community Center,Janakpuri, Delhi</dd>
                <dd><span>Email:</span><a href="#">cmcltd@gmail.com</a></dd>
              </dl>
            </div>
            <div class="col-2">
              <h4>Follow Us:</h4>
              <ul class="list-services">
                <li class="item-1"><a href="#">Facebook</a></li>
                <li class="item-2"><a href="#">Twitter</a></li>
                <li class="item-3"><a href="#">LinkedIn</a></li>
              </ul>
            </div>
            <div class="col-3">
              <h4>Why Us:</h4>
              <ul class="list-1">
                <li><a href="#">It will help you for exam preparation</a></li>
                <li><a href="#">Response on the spot</a></li>
                <li><a href="#">You can test yourself</a></li>
              </ul>
            </div>
            <div class="col-4">
			 <div class="indent3"><strong class="footer-logo">Online Examination<strong> Portal</strong></strong><strong class="phone"><strong>Toll Free:</strong> 1-800-567-8934</strong></div>
              <!--<div class="indent3"> <strong class="footer-logo">Online Examination Portal</strong> <strong class="phone"><strong>Toll Free:</strong> 1-800-567-8934</strong> </div> -->
            </div>
          </div>
        </div>
      </div>
      <div class="row-bot">
        <div class="aligncenter">
          <p class="p0">Copyright &copy; <a href="#">Domain Name</a> All Rights Reserved</p>
          <!-- {%FOOTER_LINK} -->
        </div>
      </div>
    </footer>
  </div>
</div>
<script src="js/jquery.cycle.all.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.slider').cycle({
		fx:'all',
		speed:'600',
		next:'.next',
		prev:'.prev'
	});
	
				});
</script>
</body>
</html>


    