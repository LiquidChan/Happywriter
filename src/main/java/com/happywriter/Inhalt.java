package com.happywriter;

import javax.imageio.ImageIO;

public class Inhalt {
	int id;
	String bezeichnung;
	double preis;
	ImageIO image_path;
	
		public Inhalt () {
			super();
		}
		
		public Inhalt(int id, String bezeichnung, double preis, ImageIO image_path) {
			super ();
			this.id =id;
			this.bezeichnung= bezeichnung;
			this.preis = preis;
			this.image_path=image_path;
		}

		public String getBezeichnung() {
			return bezeichnung;
		}

		public void setBezeichnung(String bezeichnung) {
			this.bezeichnung = bezeichnung;
		}

		public double getPreis() {
			return preis;
		}

		public void setPreis(double preis) {
			this.preis = preis;
		}

		public ImageIO getImage_path() {
			return image_path;
		}

		public void setImage_path(ImageIO image_path) {
			this.image_path = image_path;
		}
}
