<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Hotel Template">
    <meta name="keywords" content="Hotel, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>My Hotel | Contact</title>

    <!-- Google Font -->
    <link
        href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            <div class="inner-header">
                <div class="logo">
                    <a href="./accueil.html"><h3 style="color: white;">MyHotel</h3></a>
                </div>
                <div class="nav-right">
                    <a href="/" class="primary-btn">Make a Reservation</a>
                </div>
                <nav class="main-menu mobile-menu">
                    <ul>
                        <li class="active"><a href="/">Home</a></li>
                        <li><a href="about-us">About</a></li>
                        <li><a href="rooms">Rooms</a></li>     
                        <li><a href="contact">Contact</a></li>
                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Hero Area Section Begin -->
    <div class="hero-area set-bg other-page" data-setbg="img/about_bg.jpg">
    </div>
    <!-- Hero Area Section End -->   

    <!-- Contact Section Begin -->
    <section class="contact-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact-title">
                        <div class="section-title">
                            <span>a memorable holliday</span>
                            <h2>Located in XXXXX</h2>
                        </div>
                        <a href="#" class="primary-btn">Get Directions</a>
                    </div>
                </div>
            </div>          
            <div class="row">		            
            	<% 
	            	String message = (String) request.getAttribute("message");
	            	if( message==null ) {
	            %>
		                <div class="col-lg-8">
		                    <form action="sendContactForm" class="contact-form" method="POST">
		                        <div class="row">
		                            <div class="col-lg-6">
		                                <input type="text" placeholder="Your name" name="name">
		                            </div>
		                            <div class="col-lg-6">
		                                <input type="email" placeholder="Your email" name="email">
		                            </div>
		                            <div class="col-lg-6">
		                                <input type="text" placeholder="Name of the hotel" name="hotel">
		                            </div>
		                            <div class="col-lg-6">
		                                <input type="text" placeholder="Duration" name="duration">               
		                            </div>                            
		                        </div>
		                        <br>
		                        <br>
		                        <button type="submit">Send Message</button>
		                    </form>
		                </div>
                <%
	         		} else	{				             
	            %>
	            		<div class="col-lg-8"><p><% if( message!=null )out.print(message); %></p></div>
           		<%  } %>
           		<div class="col-lg-4">
                    <div class="info-box">
                    	<a href="/"><h3 style="color: #eaa07c;">MyHotel</h3></a>
                    	<br>
                    	<br>
                        <ul>
                            <li>XXXXX</li>
                            <li>+1 (603)535-4592</li>
                            <li>hello@youremail.com</li>
                            <li>Everyday: 06:00 -22:00</li>
                        </ul>
                        <div class="social-links">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>    
            </div>         
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- Map Section Begin -->
    <div class="map">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26440.72384129847!2d-118.24906619231132!3d34.06719475913053!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c659f50c318d%3A0xe2ffb80a9d3820ae!2sChinatown%2C%20Los%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1570213740685!5m2!1sen!2sbd"
            height="910" style="border:0;" allowfullscreen=""></iframe>
    </div>
    <!-- Map Section End -->
    
    <%@ include file="footer.jsp" %>