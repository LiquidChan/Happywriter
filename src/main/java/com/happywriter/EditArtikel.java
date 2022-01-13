package com.happywriter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditArtikel
 */
public class EditArtikel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditArtikel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id=Integer.parseInt(request.getParameter("id"));
		String bezeichnung=request.getParameter("bezeichnung");
		String image_path=request.getParameter("image_path");
		Float preis=Float.parseFloat(request.getParameter("preis"));
		dbConn con=new dbConn();
		Artikel artikel=new Artikel(bezeichnung, image_path, preis);
		Boolean result=con.editArtikel(artikel, id);
		if(result)
		{
			response.sendRedirect("artikel.jsp");  
		} else {
			response.sendRedirect("artikel.jsp?update=1");  
		}
	}

}
