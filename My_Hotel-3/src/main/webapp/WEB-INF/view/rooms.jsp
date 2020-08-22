<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.fatimazahra.app.models.Hotel" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Hotel Template">
    <meta name="keywords" content="Hotel, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>My Hotel | Rooms</title>

	<%@ include file="header.jsp" %>

    <!-- Room Section Begin -->
    <section class="room-section">
        <div class="container-fluid">       	  	   		
        
        <%    		
    		List<Hotel> hote = (List<Hotel>) request.getAttribute("hotels");   		  
       		
			if( hote.size() > 0 ) {				
				int i = 0;	       		
	       		String libelle ;
				String ville ;
				String image ;
				int nombreChambre ; 
				while( i < hote.size() ) {
	       			libelle = hote.get(i).getLibelle();
		       		ville = hote.get(i).getVille();
		       		image = hote.get(i).getImages();
		       		nombreChambre = hote.get(i).getNbr_chambres();
		       		image = "static/img/hotels/" + image;
		%>             
		            <div class="row">
		                <div class="col-lg-6 order-lg-2">
		                    <div class="ri-slider-item">
		                        <div class="ri-sliders owl-carousel">
		                            <div class="single-img set-bg" data-setbg="<% out.print(image); %>"></div>
		                            <div class="single-img set-bg" data-setbg="<% out.print(image); %>"></div>
		                            <div class="single-img set-bg" data-setbg="<% out.print(image); %>"></div>
		                        </div>
		                    </div>
		                </div>
		                <div class="col-lg-6 order-lg-1">
		                    <div class="ri-text left-side">
		                        <div class="section-title">
		                            <div class="section-title">
		                                <span>a memorable holliday</span>
		                                <h2><% out.print(libelle); %></h2>
		                            </div>
		                            <p>
		                            	<% out.print(libelle); %> est un hotel situe a <% out.print(ville); %>. <br/>
		                            	Avis : edifice en tres bon etat, tres propre et confortable. <br/>
		                            	Emplacement : Convenable mais vous pouvez chercher le plus convenable au dessous. <br/>
		                            	Service : Bien a tres Bien. <br/>
		                            	Proprete : Tres Bien. <br/>
		                            	Nombre des chambres : <% out.print(nombreChambre); %>. <br/>
									</p>
		                            <div class="ri-features">
		                                <div class="ri-info">
		                                    <i class="flaticon-019-television"></i>
		                                    <p>Smart TV</p>
		                                </div>
		                                <div class="ri-info">
		                                    <i class="flaticon-029-wifi"></i>
		                                    <p>High Wi-fii</p>
		                                </div>
		                                <div class="ri-info">
		                                    <i class="flaticon-003-air-conditioner"></i>
		                                    <p>AC</p>
		                                </div>
		                                <div class="ri-info">
		                                    <i class="flaticon-036-parking"></i>
		                                    <p>Parking</p>
		                                </div>
		                                <div class="ri-info">
		                                    <i class="flaticon-007-swimming-pool"></i>
		                                    <p>Pool</p>
		                                </div>
		                            </div>
		                            <a href="sendContact" class="primary-btn">Make a Reservation</a>
		                        </div>
		                    </div>
		                </div>
		            </div>
		                       
		            <% 
			            	i++; 
			            	if( i < hote.size() ) {
			            		 libelle = hote.get(i).getLibelle();
			       				 ville = hote.get(i).getVille();
			       				 image = hote.get(i).getImages();
			       				 nombreChambre = hote.get(i).getNbr_chambres();      
			       				 image = "static/img/hotels/" + image;
					         
				   %>        
		            
		            <div class="row">
		                <div class="col-lg-6">
		                    <div class="ri-slider-item">
		                        <div class="ri-sliders owl-carousel">
		                            <div class="single-img set-bg" data-setbg="<% out.print(image); %>"></div>
		                            <div class="single-img set-bg" data-setbg="<% out.print(image); %>"></div>
		                            <div class="single-img set-bg" data-setbg="<% out.print(image); %>"></div>
		                        </div>
		                    </div>
		                </div>
		                <div class="col-lg-6">
		                    <div class="ri-text">
		                        <div class="section-title">
		                            <div class="section-title">
		                                <span>a memorable holliday</span>
		                                <h2><% out.print(libelle); %></h2>
		                            </div>
		                            <p>
		                            	<% out.print(libelle); %> est un hotel situe a <% out.print(ville); %>. <br/>
		                            	Avis : edifice en tres bon etat, tres propre et confortable. <br/>
		                            	Emplacement : Convenable mais vous pouvez chercher le plus convenable au dessous. <br/>
		                            	Service : Bien a tres Bien. <br/>
		                            	Proprete : Tres Bien. <br/>
		                            	Nombre des chambres : <% out.print(nombreChambre); %>. <br/>
									</p>
		                            <div class="ri-features">
		                                <div class="ri-info">
		                                    <i class="flaticon-019-television"></i>
		                                    <p>Smart TV</p>
		                                </div>
		                                <div class="ri-info">
		                                    <i class="flaticon-029-wifi"></i>
		                                    <p>High Wi-fii</p>
		                                </div>
		                                <div class="ri-info">
		                                    <i class="flaticon-003-air-conditioner"></i>
		                                    <p>AC</p>
		                                </div>
		                                <div class="ri-info">
		                                    <i class="flaticon-036-parking"></i>
		                                    <p>Parking</p>
		                                </div>
		                                <div class="ri-info">
		                                    <i class="flaticon-007-swimming-pool"></i>
		                                    <p>Pool</p>
		                                </div>
		                            </div>
		                            <a href="sendContact" class="primary-btn">Make a Reservation</a>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <% 
		            	} 			            	
		            	i++;
		             } 
		         
		            } else { %>
		            	
            	    <!-- Intro Text Section Begin -->
				    <section class="intro-section spad">
				        <div class="container">
				            <div class="row intro-text">
				                <div class="col-lg-12">
				                    <div class="intro-left">
				                        <div class="section-title">                   
				                            <h2>No results for this search</h2>
				                        </div>
				                    </div>
				                </div>
				            </div>
				        </div>
				    </section>
				    <!-- Intro Text Section End -->
		            	
		          <%  } %>
		         

        </div>
    </section>
    <!-- Room Section End -->

   	<%@ include file="footer.jsp" %>
    