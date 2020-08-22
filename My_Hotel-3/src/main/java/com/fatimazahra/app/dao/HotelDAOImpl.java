package com.fatimazahra.app.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.fatimazahra.app.models.Hotel;
import com.fatimazahra.app.models.Utilisateur;

@Repository
public class HotelDAOImpl implements HotelDAO {

	@Autowired
	private EntityManager entitymanager;
	
	@Transactional
	@Override
	public List<Hotel> get() {
		Session currentSession = entitymanager.unwrap(Session.class);
		Query<Hotel> query = currentSession.createQuery("from Hotel", Hotel.class);
		List<Hotel> list = query.getResultList();		
		return list;
	}

	@Transactional
	@Override
	public Hotel get(int id) {
		Session currentSession = entitymanager.unwrap(Session.class);
		Hotel hotel = currentSession.get(Hotel.class, id);	
		return hotel;
	}

	@Transactional
	@Override
	public void save(Hotel hot) {
		Session currentSession = entitymanager.unwrap(Session.class);
		currentSession.save(hot);
	}

	@Transactional
	@Override
	public void delete(int id) {
		Session currentSession = entitymanager.unwrap(Session.class);
		currentSession.delete(id);
	}

	@Transactional
	@Override
	public List<Object[]> getHotelPerDate(String from, String to) {
		
		Session currentSession = entitymanager.unwrap(Session.class);
		
		String query = "SELECT DISTINCT hotel.libelle, hotel.ville, hotel.images, hotel.nbr_chambres "
				     + "from hotel, chambre "
				     + "where hotel.id_hotel = chambre.id_hotel and "+ from +" > chambre.fin_reservation or "+ to +" < chambre.debut_reservation " ;
		
		Query q = currentSession.createNativeQuery(query);
		
		List<Object[]> hotels = q.getResultList();

		return hotels;
	}

	@Override
	public List<Object[]> getHotelPerPerDateandCity(String from, String to, String ville) {		
		Session currentSession = entitymanager.unwrap(Session.class);		
		String query = "SELECT DISTINCT hotel.libelle, hotel.ville, hotel.images, hotel.nbr_chambres "
				     + "from hotel, chambre "
				     + "where hotel.id_hotel = chambre.id_hotel and hotel.ville = '"+ ville + "' and (" + from +" > chambre.fin_reservation or "+ to +" < chambre.debut_reservation )" ;		
		Query q = currentSession.createNativeQuery(query);		
		List<Object[]> hotels = q.getResultList();		
		System.out.println(hotels);		
		return hotels;
	}

	@Override
	public List<Object[]> getHotelPerDateandRoomsQuality(String from, String to, int nombre) {		
		Session currentSession = entitymanager.unwrap(Session.class);		
		String query = "SELECT DISTINCT hotel.libelle, hotel.ville, hotel.images, hotel.nbr_chambres "
				     + "from hotel, chambre "
				     + "where hotel.id_hotel = chambre.id_hotel and hotel.nbr_chambres >= "+ nombre +" and (" + from +" > chambre.fin_reservation or "+ to +" < chambre.debut_reservation )" ;		
		Query q = currentSession.createNativeQuery(query);		
		List<Object[]> hotels = q.getResultList();	
		return hotels;
	}

	@Override
	public List<Object[]> getHotelPerCityandRoomsQuality(String ville, int nombre) {		
		Session currentSession = entitymanager.unwrap(Session.class);		
		String query = "SELECT DISTINCT hotel.libelle, hotel.ville, hotel.images, hotel.nbr_chambres "
				     + "from hotel, chambre "
				     + "where hotel.id_hotel = chambre.id_hotel and hotel.nbr_chambres >= "+ nombre +" and hotel.ville = '"+ ville +"'";		
		Query q = currentSession.createNativeQuery(query);		
		List<Object[]> hotels = q.getResultList();		
		System.out.println(hotels);		
		return hotels;
	}

	@Override
	public List<Object[]> getHotelPerCity(String ville) {		
		Session currentSession = entitymanager.unwrap(Session.class);		
		String query = "SELECT libelle, ville, images, nbr_chambres "
					 + "from hotel "
					 + "where ville = '" + ville + "'";
		Query q = currentSession.createNativeQuery(query);		
		List<Object[]> hotels = q.getResultList();		
		return hotels;
	}

	@Override
	public List<Object[]> getHotelPerAll(String ville, String from, String to, int numCh) {
		Session currentSession = entitymanager.unwrap(Session.class);		
		String query = "SELECT DISTINCT hotel.libelle, hotel.ville, hotel.images, hotel.nbr_chambres "
				     + "from hotel, chambre "
				     + "where hotel.id_hotel = chambre.id_hotel and hotel.nbr_chambres >= "+ numCh +" and hotel.ville = '"+ ville +"' and (" + from +" > chambre.fin_reservation or "+ to +" < chambre.debut_reservation )";		
		Query q = currentSession.createNativeQuery(query);		
		List<Object[]> hotels = q.getResultList();		
		System.out.println(hotels);		
		return hotels;
	}

	@Transactional
	@Override
	public void save(Utilisateur utilisateur) {
		Session currentSession = entitymanager.unwrap(Session.class);
		currentSession.save(utilisateur);		
	}

	@Transactional
	@Override
	public List<Object[]> get(String libelle) {
		Session currentSession = entitymanager.unwrap(Session.class);
		String query = "SELECT id_hotel, libelle, ville, images, nbr_chambres from hotel where libelle='"+libelle+"'";		
		Query q = currentSession.createNativeQuery(query);	
		List<Object[]> hotels = q.getResultList();
		System.out.println(hotels);
		return hotels;
	}

}
