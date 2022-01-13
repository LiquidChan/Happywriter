package com.happywriter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddArtikel")
public class AddArtikel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddArtikel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("artikel.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bezeichnung=request.getParameter("bezeichnung");
		String image_path=request.getParameter("image_path");
		Float preis=Float.parseFloat(request.getParameter("preis"));
		
		Artikel artikel=new Artikel(bezeichnung, image_path, preis);
		dbConn con=new dbConn();
		Boolean result=con.insertArtikel(artikel);
		if(result)
		{
			response.sendRedirect("artikel.jsp?sucess=1");  
		} else {
			response.sendRedirect("artikel.jsp?error=1");  
		}
	}

}
