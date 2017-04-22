<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Online Examination Portal | Online Examination</title>
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

</head>
<body id="page2">
<!-- header -->
<div class="bg">
  <div class="main">
    <header>
      <div class="row-1">
        <h1>
						Online Examination Portal <strong class="slog">Enhance
							your learning skills</strong>
					</h1>
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
            <li><a class="active" href="Online_Exam.jsp">Online Examination</a></li>
            <li><a href="Register.jsp">Registration</a></li>
            <li class="last-item"><a href="Contacts.jsp">Contact Us</a></li>
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
		       <p style="color:red"><c:out value="${requestScope['status_register']}" default=" "/></p> 
             <h3 style="color:#05A6E0"> OUR SITE IS GENERAL ONLINE EXAMINATION TO ALL</h3>
           <br/>
           <font size="4" style="line-height: 30px;"><i><b>
          We are providing Online Examination for Computer Science Students .<br/>
          So that they can prepare there programming languages like C , C++ , Java and C#<br/>
          and we also provides General Aptitude preparation.<br/>
              
          For giving Online Examination first you have to make register with our site <br/> And with the help of your Email-Id you can test your learning skills<br/>
      
      
      </b>
      </i>
      
      </font>    
	  </div>    
          </div>
         <div class="col-4" >
          <div class="block-news">
          
          
          
         <h3 class="color-4 p2">Log In Here</h3>
         <form action="login.jsp" method="post">
                 <table>
         <tr>
         	<td><c:out value="${requestScope.status}" default=" "/></td>
         </tr>
		<tr>
		  <td  height="50">
		    <a  href="register.jsp" class="imp">Click here for new Registration </a>
		  </td>
		</tr>

	 	  <tr>
		    <td class="t1">
			Email Id :<input type="text" name="t1">
		    </td>
		  </tr>

		<tr>
		  <td class="t1">
		    Password :<input type="password" name="t2">
		  </td>
		</tr>
		
		<tr>
		 <td>
		  <input type="submit" value="Login">
		  <input type="reset" value="Cancel">
	 	</td>
		 </tr>
	
		<tr>
		  <td>
			<a class="imp" href="ForgotPassword.jsp" >Forgot Password?</a>
		 </td>
		</tr>
		
		</table>
		</form>
		</div>
		</div>
		</div>
		</div>
	
         
    </section>
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
              <div class="indent3"> <strong class="footer-logo">Online Examination <strong>Portal</strong></strong> <strong class="phone"><strong>Toll Free:</strong> 1-800-567-8934</strong> </div>
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
<script type="text/javascript">Cufon.now();
</script>
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
