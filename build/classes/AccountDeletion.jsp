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
        <img src="images/12.jpg" height=100px align="right" style="margin-right:40px;margin-top:-7px"/>
					
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
		       <form method="post" name="delete" action="AccountDeletion2.jsp">
	
	<table class="tablemod" style="width: 700px;margin-left:130px">
											<tr>
											<td align="center" colspan="4"><h2 style="color:black;margin-left:140px">Delete Account</h2></td>
																						
											</tr>
											<tr>
												<td align="right"  style="color:Black">First Name</td>
												<td colspan="2" align="center"><input type="text" name="firstname"/></td>
											</tr>
											<tr>
												<td align="right"  style="color:Black">Last Name</td>
												<td colspan="2" align="center"><input type="text" name="lastname"/></td>
											</tr>
											<tr>
												<td align="right"  style="color:Black">Email Id</td>
												<td colspan="2" align="center"><input type="text" name="email" onchange="return validate_email()"/></td>
											</tr>
											<tr>
												<td align="right" style="color:Black">Date of Birth</td>
												<td id="date" colspan="2" align="center">
												<select name="month">
														<option value="-1">Month</option>
														<option value="01">January</option>
														<option value="02">February</option>
														<option value="03">March</option>
														<option value="04">April</option>
														<option value="05">May</option>
														<option value="06">June</option>
														<option value="07">July</option>
														<option value="08">August</option>
														<option value="09">September</option>
														<option value="10">October</option>
														<option value="11">November</option>
														<option value="12">December</option>
												</select> 
												<select name="day">
														<option value="-1">Day</option>
														<option value="01">01</option>
														<option value="02">02</option>
														<option value="03">03</option>
														<option value="04">04</option>
														<option value="05">05</option>
														<option value="06">06</option>
														<option value="07">07</option>
														<option value="08">08</option>
														<option value="09">09</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>
														<option value="17">17</option>
														<option value="18">18</option>
														<option value="19">19</option>
														<option value="20">20</option>
														<option value="21">21</option>
														<option value="22">22</option>
														<option value="23">23</option>
														<option value="24">24</option>
														<option value="25">25</option>
														<option value="26">26</option>
														<option value="27">27</option>
														<option value="28">28</option>
														<option value="29">29</option>
														<option value="30">30</option>
														<option value="31">31</option>
												</select> 
												<select name="year">
														<option value="-1">Year</option>
														<option value="2009">2009</option>
														<option value="2008">2008</option>
														<option value="2007">2007</option>
														<option value="2006">2006</option>
														<option value="2005">2005</option>
														<option value="2004">2004</option>
														<option value="2003">2003</option>
														<option value="2002">2002</option>
														<option value="2001">2001</option>
														<option value="2000">2000</option>
														<option value="1999">1999</option>
														<option value="1998">1998</option>
														<option value="1997">1997</option>
														<option value="1996">1996</option>
														<option value="1995">1995</option>
														<option value="1994">1994</option>
														<option value="1993">1993</option>
														<option value="1992">1992</option>
														<option value="1991">1991</option>
														<option value="1990">1990</option>
														<option value="1989">1989</option>
														<option value="1988">1988</option>
														<option value="1987">1987</option>
														<option value="1986">1986</option>
														<option value="1985">1985</option>
														<option value="1984">1984</option>
														<option value="1983">1983</option>
														<option value="1982">1982</option>
														<option value="1981">1981</option>
														<option value="1980">1980</option>
														<option value="1979">1979</option>
														<option value="1978">1978</option>
														<option value="1977">1977</option>
														<option value="1976">1976</option>
														<option value="1975">1975</option>
														<option value="1974">1974</option>
														<option value="1973">1973</option>
														<option value="1972">1972</option>
														<option value="1971">1971</option>
														<option value="1970">1970</option>
														<option value="1969">1969</option>
														<option value="1968">1968</option>
														<option value="1967">1967</option>
														<option value="1966">1966</option>
														<option value="1965">1965</option>
														<option value="1964">1964</option>
														<option value="1963">1963</option>
														<option value="1962">1962</option>
														<option value="1961">1961</option>
														<option value="1960">1960</option>
														<option value="1959">1959</option>
														<option value="1958">1958</option>
														<option value="1957">1957</option>
														<option value="1956">1956</option>
														<option value="1955">1955</option>
														<option value="1954">1954</option>
														<option value="1953">1953</option>
														<option value="1952">1952</option>
														<option value="1951">1951</option>
														<option value="1950">1950</option>
												</select>
												</td>
											</tr>
											<tr>
												<td align="right" style="color:Black">Choose Security Question</td>
												<td colspan="3" align="center">
													<select name="securityquestion">
											      		<option value="-1">Choose the Security Question</option>
														<option value="Your favourite teacher name?">Your favourite teacher name?</option>
														<option value="Your pet name?">Your pet name?</option>
														<option value="Your school name?">Your school name?</option>
														<option value="Your mother maiden name?">Your mother maiden name?</option>
												</select></td>
											</tr>
											<tr>
												<td align="right" style="color:Black">Enter Security Answer</td>
												<td colspan="3" align="center"><input type="text" name="answer">
												</td>
											</tr>
											<tr>
												<td> <input type="submit" value="Delete" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left: 150px;width:100px;margin-top:20px"/></td>
												<td colspan="4"><input type="submit" value="Cancel" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left: 200px;width:100px;margin-top:20px"></td>
												<td></td>
											</tr>
											<tr><td></td></tr>
										</table>	  
										</form>     
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
