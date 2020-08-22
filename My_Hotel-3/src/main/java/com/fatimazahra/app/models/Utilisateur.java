package com.fatimazahra.app.models;

import java.io.Serializable;

import javax.persistence.*;

@Entity
public class Utilisateur implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_hotel")
	private Hotel hotel;
	private int duration;
	
	public Utilisateur() {}
	
	public Utilisateur(String name, String email, Hotel hotel, int duration) {
		super();
		this.name = name;
		this.email = email;
		this.hotel = hotel;
		this.duration = duration;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Hotel getHotel() {
		return hotel;
	}
	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}

	@Override
	public String toString() {
		return "Utilisateur [id=" + id + ", name=" + name + ", email=" + email + ", hotel=" + hotel + ", duration="
				+ duration + "]";
	}
	
}
