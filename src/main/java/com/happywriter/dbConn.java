package com.happywriter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

public class dbConn {
	private String dburl="jdbc:mysql://localhost:3306/HAPPY";
	private String dbuser="root";
	private String dbpass="";
	private String dbdriver="com.mysql.jdbc.Driver";
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection()
	{
		Connection con=null;
		try {
			con = DriverManager.getConnection(dburl, dbuser, dbpass);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	public boolean insertArtikel(Artikel artikel)
	{
		loadDriver(dbdriver);
		Connection con = getConnection();
		Boolean status=true;
		String sql="INSERT INTO artikel (bezeichnung, preis, image_path) VALUES(?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, artikel.getBezeichnung());
			ps.setFloat(2, artikel.getPreis());
			ps.setString(3, artikel.getImage_path());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			status=false;
		}
		
		return status;
	}
	public boolean deleteArtikel(Integer id)
	{
		loadDriver(dbdriver);
		Connection con = getConnection();
		Boolean status=true;
		String sql="DELETE FROM artikel where id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			status=false;
		}
		
		return status;
	}
	public boolean editArtikel(Artikel artikel, Integer id)
	{
		loadDriver(dbdriver);
		Connection con = getConnection();
		Boolean status=true;
		String sql="UPDATE artikel SET bezeichnung=?, preis=?, image_path=? WHERE id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, artikel.getBezeichnung());
			ps.setFloat(2, artikel.getPreis());
			ps.setString(3, artikel.getImage_path());
			ps.setInt(4, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			status=false;
		}
		
		return status;
	}
	public boolean insertKunde(Kunde kunde, Integer id)
	{
		loadDriver(dbdriver);
		Connection con = getConnection();
		Boolean status=true;
		String sql="UPDATE kunde SET kunde_seit=?, nachname=?, vorname=?, ort=?, plz=?, strasse=?, tel=? WHERE id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setDate(1, (java.sql.Date) kunde.kunde_seit);
			ps.setString(2, kunde.vorname);
			ps.setString(3, kunde.vorname);
			ps.setString(4, kunde.ort);
			ps.setString(5, kunde.plz);
			ps.setString(6, kunde.strasse);
			ps.setString(7, kunde.tel);
			
		} catch (SQLException e) {
			e.printStackTrace();
			status = false;
		}
		
		return status;
		
	}
	public boolean createBestellung (Bestellung bestellung, Integer id) {
		loadDriver(dbdriver);
		Connection con = getConnection();
		Boolean status=true;
		String sql="UPDATE bestellung SET bemerkung=?, datum=?, kunde_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, bestellung.bemerkung);
			ps.setDate(2, (java.sql.Date) bestellung.datum);
			ps.setInt(3, bestellung.kunde_id);
		} catch (SQLException e){
		e.printStackTrace();
		status = false;
		}
		return status;
	}
	public boolean createBestellConfig (Bestellung bestellung, Integer id  ) {
		loadDriver(dbdriver);
		Connection con = getConnection();
		Boolean status=true;
		String sql="UPDATE bestellte_konfiguration  SET bestellPos_id=?, inhalt_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
			status = false;
		}
		return status;
	}
}