<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Checkout</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<!-- Bootstrap include -->
<script src="js/bootstrap.bundle.min.js"></script>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="index.jsp">HappyWriter</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	       
	        </li>
	          	<%
				Integer admin = (Integer)session.getAttribute("admin");
				if (admin != null)
				{
				%>				
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            Admin
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	            <li><a class="dropdown-item" href="artikel.jsp">Artikel Management</a></li>
	          </ul>
	        </li>
	        <%			
				}
  			%>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="logout.jsp">Log Out</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<br>

<form method="post" action="dankesseite.jsp">
<h1> Überprüfen Sie Ihre Angaben</h1>


	<div class="form-group">  
		<label for="vorname" class="form-control" id="vorname" >Vorname: <%= request.getParameter("vorname")%></label>
	</div>
	
	<div class="form-group"> 
		<label for="nachname" class="form-control" id="nachname" >Nachname: <%= request.getParameter("nachname")%></label>
	</div>
	
	<div class="form-group"> 
		<label for="strasse" class="form-control" id="strasse">Strasse: <%= request.getParameter("strasse")%> </label>
	</div>
	
	<div class="form-group">
		<label for="ort" class="form-control" id="ort">Ort: <%= request.getParameter("ort")%></label>
	</div>
	
	<div class="form-group">
		<label for="plz" class="form-control" id="ort">PLZ: <%= request.getParameter("plz")%></label>
	</div>
	
	<div class="form-group">
		<label for="telefon" class="form-control" id="ort">Ort: <%= request.getParameter("telefon")%></label> 
	</div>
	
	<div class="form-group">
		<label for="textarea" class="form-control" id="textarea">Kommentar: <%= request.getParameter("textarea")%></label>
	</div>
	<br>
	<div class="form-group"> 
		 <a href="http://localhost:8080/HappyWriter/Kundeninfos.jsp"> <button type="button">Zurück</button> </a>
		 <input type="submit" value="Weiter">  
	</div>

</form>

</body>
</html>