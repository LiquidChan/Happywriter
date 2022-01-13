package com.happywriter;

import java.util.Date;

public class Kunde {
	Date kunde_seit;
	String nachname;
	String vorname;
	String ort;
	String plz;
	String strasse;
	String tel;
	
	
	
	public  Kunde() {
		super();
	}

	public Kunde (Date kunde_seit, String nachname, String vorname, String ort, String plz, String strasse, String tel) {
		super();
		this.kunde_seit=kunde_seit;
		this.nachname=nachname;
		this.vorname=vorname;
		this.ort=ort;
		this.plz=plz;
		this.strasse=strasse;
		this.tel=tel;
	}

	public Date getKunde_seit() {
		return kunde_seit;
	}

	public void setKunde_seit(Date kunde_seit) {
		this.kunde_seit = kunde_seit;
	}

	public String getNachname() {
		return nachname;
	}

	public void setNachname(String nachname) {
		this.nachname = nachname;
	}

	public String getVorname() {
		return vorname;
	}

	public void setVorname(String vorname) {
		this.vorname = vorname;
	}

	public String getOrt() {
		return ort;
	}

	public void setOrt(String ort) {
		this.ort = ort;
	}

	public String getPlz() {
		return plz;
	}

	public void setPlz(String plz) {
		this.plz = plz;
	}

	public String getStrasse() {
		return strasse;
	}

	public void setStrasse(String strasse) {
		this.strasse = strasse;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
}
