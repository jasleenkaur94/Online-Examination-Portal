<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Online Examination Portal | Contacts</title>
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
<script src="js/FF-cash.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>
<body id="page5">
<!-- header -->
<div class="bg">
  <div class="main">
    <header>
      <div class="row-1">
        <h1>Online Examination Portal <strong class="slog">Enhance your learning skills</strong> </h1>
        <form id="search-form" action="#" method="post" enctype="multipart/form-data">
          <fieldset>
            <div class="search-form">
              <input type="text" name="search" value="Type Keyword Here" onBlur="if(this.value=='') this.value='Type Keyword Here'" onFocus="if(this.value =='Type Keyword Here' ) this.value=''" />
              <a href="#">Search</a> </div>
          </fieldset>
        </form>
      </div>
      <div class="row-2">
        <nav>
          <ul class="menu">
            <li><a href="Index.jsp">Home Page</a></li>
            <li><a class="active">Forgot Password</a></li>
            <li><a href="Register.jsp">Registration</a></li>
            <li><a href="Contacts.jsp">Contact Us</a></li>
          </ul>
        </nav>
      </div>
    </header>
    
    
    <!-- content -->
    <section id="content">
      <div class="padding">
        <div class="wrapper p4">
          <div class="col-1">
            <div class="indent">
		       
	
	<a href="AccountDeletion.jsp"> Delete your Account Permanently</a>
	<br>
	<br>
	<a href="resetPass.jsp"> New password Page</a>	       
		       </div>
		       </div>
		                       
		       </div>
		       </div>
		       
		       
		       </section>
		       
		        
    <!-- footer-->
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
                <dd><span>Email:</span><a class="imp" href="#">cmcltd@gmail.com</a></dd>
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
                <li><a href="#">It will help exam preparation</a></li>
                <li><a href="#">Response on the spot</a></li>
                <li><a href="#">You can test yourself</a></li>
              </ul>
            </div>
            <div class="col-4">
			 <div class="indent3"><strong class="footer-logo">Online Examination <strong>Portal</strong></strong><strong class="phone"><strong>Toll Free:</strong> 1-800-567-8934</strong></div>
              <!--<div class="indent3"> <strong class="footer-logo">Online Examination <strong>Portal</strong></strong> <strong class="phone"><strong>Toll Free:</strong> 1-800-567-8934</strong> </div> -->
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
<script type="text/javascript">Cufon.now();</script>
<script type="text/javascript">
$(function () {
    $('.slider')._TMS({
        prevBu: '.prev',
        nextBu: '.next',
        playBu: '.play',
        duration: 800,
        easing: 'easeOutQuad',
        preset: 'simpleFade',
        pagination: false,
        slideshow: 3000,
        numStatus: false,
        pauseOnHover: true,
        banners: true,
        waitBannerAnimation: false,
        bannerShow: function (banner) {
            banner.hide().fadeIn(500)
        },
        bannerHide: function (banner) {
            banner.show().fadeOut(500)
        }
    });
})
</script>
</body>
</html>
