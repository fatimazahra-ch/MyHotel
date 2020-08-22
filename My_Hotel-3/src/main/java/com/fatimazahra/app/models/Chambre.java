package com.fatimazahra.app.models;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Chambre {

	@Id
	private int id_chambre;
	private String type;
	private double prix;
	private String etat;
	private Date debut_reservation;
	private Date fin_reservation;
	@OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_hotel", nullable = false)
	private Hotel hotel;
	
	
	public int getId_chambre() {
		return id_chambre;
	}
	public void setId_chambre(int id_chambre) {
		this.id_chambre = id_chambre;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	public String getEtat() {
		return etat;
	}
	public void setEtat(String etat) {
		this.etat = etat;
	}
	public Date getDebut_reservation() {
		return debut_reservation;
	}
	public void setDebut_reservation(Date debut_reservation) {
		this.debut_reservation = debut_reservation;
	}
	public Date getFin_reservation() {
		return fin_reservation;
	}
	public void setFin_reservation(Date fin_reservation) {
		this.fin_reservation = fin_reservation;
	}
	public Hotel getHotel() {
		return hotel;
	}
	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
	
	
	
}
