<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Hotel Template">
    <meta name="keywords" content="Hotel, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>My Hotel | About</title>

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
                        <li><a href="sendContact">Contact</a></li>
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


    <!-- About Us Section Begin -->
    <section class="about-us spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="about-left">
                        <div class="section-title">
                            <span>a memorable holliday</span>
                            <h2>A great stay in a <br />lovely hotel.</h2>
                        </div>
                        <p class="second-text">
                        	A hotel management platform intended for everyone who wishes to
                        	consult hotels online according to the price, type, number of people, 
                        	city, duration and popularity of hotels. 
                        	Our app gives hotels the opportunity 
                        	to present their information to customers. 
                        	It is a web application accessible 24h / 24h.
                        </p>
                        <p>                       	
                        	Our application is a site for research and price comparisons for 
                        	accommodation offers. From lavish five-star hotels to more intimate vacation rentals, 
                        	the accommodation options are endless. We are not party to any reservation agreement between
                        	 customers and the site or hotel with which customers book. We do not receive any payment for stays.
							In total, it brings together more than 90 hotels and other types of accommodation in Morocco.
                        </p>
                        <a href="/" class="primary-btn">Make a Reservation</a>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="row">
                        <div class="col-lg-7 col-md-7">
                            <div class="about-img">
                                <img src="img/about/about-1.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-5">
                            <div class="about-img second-img">
                                <img src="img/about/about-2.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-5 col-md-5">
                            <div class="about-img third-img">
                                <img src="img/about/about-3.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7">
                            <div class="about-img">
                                <img src="img/about/about-4.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Us Section End -->

    <!-- Milestone Counter Section Begin -->
    <section class="milestone-counter spad set-bg" data-setbg="img/about/milestone-bg.jpg">
        <div class="container">
            <div class="row">
            </div>
        </div>
    </section>
    <!-- Milestone Counter Section End -->

    <!-- Call To Action Begin -->
    <section class="callto-section">
        <div class="container">
            <div class="callto-text">
                <h2>Book your stay with us now!</h2>
            </div>
            <a href="/" class="primary-btn">Make a Reservation</a>
        </div>
    </section>
    <!-- Call To Action End  -->

    <%@ include file="footer.jsp" %>