<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
<!-- Css Styles -->
    <link rel="stylesheet" href="static/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="static/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="static/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="static/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="static/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="static/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="static/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="static/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="static/css/style.css" type="text/css">
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
                    <a href="/"><h3 style="color: white;">MyHotel</h3></a>
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
    <section class="hero-area set-bg" data-setbg="img/hero-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="hero-text">
                        <h1>A Luxury Stay</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Area Section End -->
    
     <!-- Search Filter Section Begin -->
    <section class="search-filter">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <form action="search" class="check-form" method="GET">
                       <h4>Check Availability</h4>
                        <div class="inputpicker">
	                         <p>Ville</p>
	                         <input type="text" class="inputpicker-1" placeholder="ex:Marrakesh" name="city" value="<% if(request.getAttribute("city") != null) out.print(request.getAttribute("city")); %>">
                    	</div>
                     	<div class="datepicker">
	                         <p>From</p>
	                         <input type="text" class="datepicker-1" placeholder="dd / mm / yyyy" name="from" value="<% if(request.getAttribute("from") != null) out.print(request.getAttribute("from")); %>">
	                         <img src="img/calendar.png" alt="">
                        </div>
                        <div class="datepicker">
	                         <p>To</p>
	                         <input type="text" class="datepicker-2" placeholder="dd / mm / yyyy" name="to" value="<% if(request.getAttribute("to") != null) out.print(request.getAttribute("to")); %>">
	                         <img src="img/calendar.png" alt="">
                        </div>
                        <div class="room-quantity">
	                         <div class="single-quantity">
	                             <p>Number of Rooms</p>
	                             <div class="pro-qty">
	                             	<input type="text" placeholder="0" value="<% if(request.getAttribute("numCh") != null) out.print(request.getAttribute("numCh")); %>" name="numberRooms">
                             	 </div>
	                         </div>
	                        <div class="singleroom-quantity">
	                             <p>Room</p>
	                             <select name="etat" class="suit-select">
	                                 <option>Eg. Master suite</option>
	                                 <option value="<% if(request.getAttribute("city") != null) out.print(request.getAttribute("city")); %>">Double Room</option>
	                                 <option value="<% if(request.getAttribute("city") != null) out.print(request.getAttribute("city")); %>">Single Room</option>
	                                 <option value="<% if(request.getAttribute("city") != null) out.print(request.getAttribute("city")); %>">Special Room</option>
	                             </select>
	                        </div>
                   		</div>
                        <button type="submit">Go</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Search Filter Section End -->