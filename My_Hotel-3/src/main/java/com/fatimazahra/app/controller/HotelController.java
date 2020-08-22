package com.fatimazahra.app.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fatimazahra.app.dao.HotelDAO;
import com.fatimazahra.app.models.Hotel;
import com.fatimazahra.app.models.Utilisateur;


@Controller
public class HotelController {

	@Autowired
	private HotelDAO hotelDAO;
	HttpSession session ;
	ModelAndView mv = new ModelAndView();
	
	@RequestMapping("/")
	public String accueil() {
		return "accueil";
	}
	
	@RequestMapping("/about-us")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about-us");
		return mv;
	}
	
	@RequestMapping("/sendContact")
	public ModelAndView sendContact(HttpServletRequest request) 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contact");
		return mv;
	}
	
	@RequestMapping("/sendContactForm")
	public ModelAndView sendContactForm(HttpServletRequest request) 
	{
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String hotel = request.getParameter("hotel");
		mv = new ModelAndView();
		String message = "";
		if( name!=null && email!=null && hotel!=null) {
			Integer duration = Integer.parseInt(request.getParameter("duration"));
			List<Object[]> hotels =  hotelDAO.get(hotel);
			Hotel hh = null ;
			for(Object[] h : hotels) 
				hh = new Hotel((Integer)h[0], (String) h[1], (String)h[2], (String)h[3], (int)h[4]);			
			Utilisateur user = new Utilisateur(name, email, hh, duration);	
			hotelDAO.save(user);
			message = "You will receive a message as soon as it's possible";		
		}				
		mv.setViewName("contact");
		mv.addObject("message", message);
		return mv;
	}
	
	@RequestMapping("/search")
	public ModelAndView recherche(HttpServletRequest request) 
	{											
			String city = request.getParameter("city");				
			String from = request.getParameter("from");		
			String to = request.getParameter("to");
			String numberRooms = request.getParameter("numberRooms");
			String etat = request.getParameter("etat");
			if( city!=null && from!=null && to!=null && numberRooms!=null &&  etat!=null) {
					int numCh = 0;
				if( !numberRooms.equals("") )
					numCh = Integer.valueOf(numberRooms);								
				if( !from.equals("") && !to.equals("") && city.equals("") && numberRooms.equals("") && etat.equals("Eg. Master suite")) {
					return rechercheHotelParDate(request, city, from, to, numberRooms, etat);
				}						
				if( !from.equals("") && !to.equals("") && !city.equals("") && numberRooms.equals("") ) {
					return searcheHotelPerDateandCity(request, city, from, to, numberRooms, etat);			
				}
				if( !from.equals("") && !to.equals("") && !numberRooms.equals("") && !etat.equals("Eg. Master suite") && city.equals("")) {	
					return searcheHotelPerDateandRoomsQuality(request, city, from, to, numCh, etat);			
				}
				if( !city.equals("") && !numberRooms.equals("") && !etat.equals("Eg. Master suite") && from.equals("") && to.equals("") ) {	
					return searcheHotelPerCityandRoomsQuality(request, city, from, to, numCh, etat);			
				}
				if( !city.equals("") && from.equals("") && to.equals("") && numberRooms.equals("") && etat.equals("Eg. Master suite") ) {
					return searcheHotelPerCity(request, city, from, to, numberRooms, etat);	
				}
				if( !city.equals("") && !from.equals("") && !to.equals("") && !numberRooms.equals("") && !etat.equals("Eg. Master suite") ) {
					return searcheHotelPerAll(request, city, from, to, numCh, etat);
				}
			}
				
			mv.setViewName("accueil");
			return mv;				
	}		
	
	
	private ModelAndView searcheHotelPerAll(HttpServletRequest request, String city, String from, String to, int numCh, String etat) {
		List<Object[]> hotels = hotelDAO.getHotelPerAll(city, from, to, numCh);
		List<Hotel> results = new ArrayList<>();
		for(Object[] h : hotels) {
			Hotel hh = new Hotel((String) h[0], (String)h[1], (String)h[2], (int)h[3]);
			results.add(hh);
		}				
		mv.setViewName("rooms");
		mv.addObject("hotels", results);
		mv.addObject("city", city);
		mv.addObject("from", from);
		mv.addObject("to", to);
		mv.addObject("numCh", numCh);
		mv.addObject("etat", etat);
		return mv;
	}

	
	private ModelAndView searcheHotelPerCity(HttpServletRequest request, String city, String from, String to, String numCh, String etat) {
		List<Object[]> hotels = hotelDAO.getHotelPerCity(city);
		List<Hotel> results = new ArrayList<>();
		for(Object[] h : hotels) {
			Hotel hh = new Hotel((String) h[0], (String)h[1], (String)h[2], (int)h[3]);
			results.add(hh);
		}		
		mv.setViewName("rooms");
		mv.addObject("hotels", results);
		mv.addObject("city", city);
		mv.addObject("from", from);
		mv.addObject("to", to);
		mv.addObject("numCh", numCh);
		mv.addObject("etat", etat);
		return mv;
	}

	
	public ModelAndView rechercheHotelParDate(HttpServletRequest request, String city, String from, String to, String numCh, String etat) {
		List<Object[]> hotels = hotelDAO.getHotelPerDate(from, to);		
		List<Hotel> results = new ArrayList<>();			
		for(Object[] h : hotels) {
			Hotel hh = new Hotel((String) h[0], (String)h[1], (String)h[2], (int)h[3]);
			results.add(hh);
		}		
		mv.setViewName("rooms");
		mv.addObject("hotels", results);
		mv.addObject("city", city);
		mv.addObject("from", from);
		mv.addObject("to", to);
		mv.addObject("numCh", numCh);
		mv.addObject("etat", etat);
		return mv;
	}	
	
	
	public ModelAndView searcheHotelPerDateandCity(HttpServletRequest request, String city, String from, String to, String numCh, String etat) {					
		List<Object[]> hotels = hotelDAO.getHotelPerPerDateandCity(from, to, city);
		List<Hotel> results = new ArrayList<>();		
		for(Object[] h : hotels) {
				Hotel hh = new Hotel((String) h[0], (String)h[1], (String)h[2], (int)h[3]);
				results.add(hh);
		}	
		mv.setViewName("rooms");
		mv.addObject("hotels", results);
		mv.addObject("city", city);
		mv.addObject("from", from);
		mv.addObject("to", to);
		mv.addObject("numCh", numCh);
		mv.addObject("etat", etat);
		return mv;
	}
	
	
	public ModelAndView searcheHotelPerDateandRoomsQuality(HttpServletRequest request, String city, String from, String to, int numCh, String etat) {		
		List<Object[]> hotels = hotelDAO.getHotelPerDateandRoomsQuality(from, to, numCh);
		List<Hotel> results = new ArrayList<>();		
		for(Object[] h : hotels) {
				Hotel hh = new Hotel((String) h[0], (String)h[1], (String)h[2], (int)h[3]);
				results.add(hh);
		}
		mv.setViewName("rooms");
		mv.addObject("hotels", results);
		mv.addObject("city", city);
		mv.addObject("from", from);
		mv.addObject("to", to);
		mv.addObject("numCh", numCh);
		mv.addObject("etat", etat);
		return mv;
	}
	
	
	public ModelAndView searcheHotelPerCityandRoomsQuality(HttpServletRequest request, String city, String from, String to, int numCh, String etat) {		
		List<Object[]> hotels = hotelDAO.getHotelPerCityandRoomsQuality(city, numCh);
		List<Hotel> results = new ArrayList<>();		
		for(Object[] h : hotels) {
				Hotel hh = new Hotel((String) h[0], (String)h[1], (String)h[2], (int)h[3]);
				results.add(hh);
		}		
		mv.setViewName("rooms");
		mv.addObject("hotels", results);
		mv.addObject("city", city);
		mv.addObject("from", from);
		mv.addObject("to", to);
		mv.addObject("numCh", numCh);
		mv.addObject("etat", etat);
		return mv;
	}

}
