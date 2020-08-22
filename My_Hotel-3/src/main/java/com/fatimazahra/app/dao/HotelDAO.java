package com.fatimazahra.app.dao;

import java.util.List;

import com.fatimazahra.app.models.Hotel;
import com.fatimazahra.app.models.Utilisateur;

public interface HotelDAO {

	List<Hotel> get();
	
	Hotel get(int id);
	
	List<Object[]> get(String libelle);
	
	void save(Hotel hot);
	
	void save(Utilisateur utilisateur);

	void delete(int id);
	
	List<Object[]> getHotelPerDate(String from, String to);
	
	List<Object[]> getHotelPerPerDateandCity(String from, String to, String ville);
	
	List<Object[]> getHotelPerDateandRoomsQuality(String from, String to, int nombre);
	
	List<Object[]> getHotelPerCityandRoomsQuality(String ville, int nombre);
	
	List<Object[]> getHotelPerCity(String ville);
	
	List<Object[]> getHotelPerAll(String ville , String from, String to, int numCh);
	
}
