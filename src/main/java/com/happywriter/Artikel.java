package com.happywriter;

public class Artikel {
	private String bezeichnung,image_path;
	private Float preis;
	
	public Artikel() {
		super();
	}
	
	public Artikel(String bezeichnung, String image_path, Float preis) {
		super();
		this.bezeichnung = bezeichnung;
		this.image_path = image_path;
		this.preis = preis;
	}
	public String getBezeichnung() {
		return bezeichnung;
	}
	public void setBezeichnung(String bezeichnung) {
		this.bezeichnung = bezeichnung;
	}
	public String getImage_path() {
		return image_path;
	}
	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}
	public Float getPreis() {
		return preis;
	}
	public void setPreis(Float preis) {
		this.preis = preis;
	}
	
}
