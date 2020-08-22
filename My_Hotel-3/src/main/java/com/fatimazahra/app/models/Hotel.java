package com.fatimazahra.app.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

@Entity
public class Hotel implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_hotel;
	private String libelle;
	private String ville;
	private String images;
	private int nbr_chambres;
	@OneToMany(mappedBy = "hotel", cascade = {
	        CascadeType.ALL
	    })
	private List<Utilisateur> utilisateur;
	
	public Hotel() {
		
	}
	
	public Hotel(String libelle, String ville, String images, int nbr_chambres) {
		super();
		this.libelle = libelle;
		this.ville = ville;
		this.images = images;
		this.nbr_chambres = nbr_chambres;
	}
	
	public Hotel(int id_hotel, String libelle, String ville, String images, int nbr_chambres) {
		super();
		this.id_hotel = id_hotel;
		this.libelle = libelle;
		this.ville = ville;
		this.images = images;
		this.nbr_chambres = nbr_chambres;
	}
	
	public int getId_hotel() {
		return id_hotel;
	}
	public void setId_hotel(int id_hotel) {
		this.id_hotel = id_hotel;
	}
	public String getLibelle() {
		return libelle;
	}
	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public int getNbr_chambres() {
		return nbr_chambres;
	}
	public void setNbr_chambres(int nbr_chambres) {
		this.nbr_chambres = nbr_chambres;
	}
	
	@Override
	public String toString() {
		return "Hotel [id_hotel=" + id_hotel + ", libelle=" + libelle + ", ville=" + ville + ", images=" + images
				+ ", nbr_chambres=" + nbr_chambres + "]";
	}	
	
}
