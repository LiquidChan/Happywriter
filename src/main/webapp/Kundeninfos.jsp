<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Lieferangaben</title>
</head>
<body>
<form method="post" action="angabenüberprüfung.jsp">
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
</form>
<h1>Lieferangaben</h1>

<form method="post" action="angabenüberprüfung.jsp">  
    <div class="form-group">
		<label for="vorname" class="form-control" id="vorname" >Vorname</label>
    	<input type="text" class="form-control" id="vorname" name="vorname" placeholder="Vorname" required>
    </div>
    
   <div class="form-group">
		<label for="nachname" class="form-control" id="nachname" >Nachname</label>
    	<input type="text" class="form-control" id="nachname" name="nachname" placeholder="Nachname" required>
    </div>
    
  <div class="form-group">
		<label for="strasse" class="form-control" id="strasse" >Strasse</label>
    	<input type="text" class="form-control" id="strasse" name="strasse" placeholder="Strasse" required>
   </div>
   
   <div class="form-group">
	<label for="ort" class="form-control" id="ort" >Ort</label>
    <input type="text" class="form-control" id="ort" name="ort" placeholder="Ort" required>
    </div>
  
  <div class="form-group">
	<label for="plz" class="form-control" id="plz" >PLZ</label>
    <input type="number" class="form-control" id="plz" name="plz" placeholder="PLZ" required>
    </div>
    
    <div class="form-group">
		<label for="telefon" class="form-control" id="telefon" >Telefon</label>
    	<input type="number" class="form-control" id="telefon" name="telefon" placeholder="Telefon" required>
    </div>
  <div class="form-group">
    	<label for="textarea" class="form-control" id="textarea">Kommentar</label>
    	<textarea name="textarea" class="form-control" id="textarea" name="textarea" rows="5" placeholder="Kommentar"></textarea>
    </div>
	<br>
    <div class="form-group">
         <a href="http://localhost:8080/HappyWriter/"> <button type="button">Zurück</button> </a> 
         <input type="submit" value="Weiter"> 
    </div>
</form>
</body>
</html> 