package com.happywriter;

import java.util.Date;

public class Bestellung {

		int id;
		String bemerkung;
		Date datum;
		int kunde_id;
	
	public  Bestellung() {
		super();
	}
		
	public Bestellung ( int id, String bemerkung, Date datum, int kunde_id) {
		super();
		this.id = id;
		this.bemerkung = bemerkung;
		this.datum = datum;
		this.kunde_id=kunde_id;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBemerkung() {
		return bemerkung;
	}

	public void setBemerkung(String bemerkung) {
		this.bemerkung = bemerkung;
	}

	public Date getDatum() {
		return datum;
	}

	public void setDatum(Date datum) {
		this.datum = datum;
	}

	public int getKunde_id() {
		return kunde_id;
	}

	public void setKunde_id(int kunde_id) {
		this.kunde_id = kunde_id;
	}

}
