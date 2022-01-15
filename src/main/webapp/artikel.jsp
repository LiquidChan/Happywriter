<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <title>HappyWriter</title>
  </head>
  <body>  
  
    <sql:setDataSource
    var="myDS"
    driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/HAPPY"
    user="root" password=""
	/>
	<sql:query var="listArtikel"   dataSource="${myDS}">
        SELECT * FROM artikel;
    </sql:query>
    
  	<%
		String uid = (String)session.getAttribute("user");
			if (uid == null)
				{
		%><!-- if session not created redirect to login page -->
					 <jsp:forward page="login.jsp"/>
		<%	
				}
	%> 
  
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
				}else{
					%><!-- if session not created redirect to login page -->
					 <jsp:forward page="index.jsp"/>
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
    <div class="container">
      <h3>Artikel hinzufügen</h3>
	
	  <div class="row">
	    <div class="col">
			<form method="post" action="AddArtikel">
				<label for="bezeichnung">Bezeichnung</label>
		      	<input type="text" name="bezeichnung" id="bezeichnung" class="form-control" placeholder="Bezeichnung" required autofocus>
		      	<label for="preis">Preis</label>
		      	<input type="text" name="preis" id="preis" class="form-control" placeholder="Preis" required>
		      	<label for="image_path">Bild Pfad</label>
		      	<input type="text" name="image_path" id="image_path" class="form-control" placeholder="Bild Pfad" required><br>
		      	<input type="submit">
			</form>
		</div>
	  </div>
	  <br>
	  <%
	  	boolean isSet = (request.getParameter("delete") == null);
	  	if(!isSet)
	  	{
	  	%>
	  	<div class="alert alert-danger" role="alert">
			Artikel konnte nicht gelöscht werden!
		</div>
		<%
	  	} 
	  	%>
      <h3>Artikel</h3>
	
	
	  <table class="table">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Bezeichnung</th>
	      <th scope="col">Preis CHF</th>
	      <th scope="col">Foto</th>
	      <th scope="col">Bearbeiten</th>
	      <th scope="col">Löschen</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:set var="count" value="0" scope="page" />
	  	<c:forEach var="artikel" items="${listArtikel.rows}">
	  	<c:set var="count" value="${count + 1}" scope="page"/>
	  	  <tr>
	  	  <th scope="row"><c:out value="${artikel.id}" /></th>
	      <td>
	      	<c:out value="${artikel.bezeichnung}" />
	      </td>
	      <td>
	      	<c:out value="${artikel.preis}" /> CHF
	      </td>
	      <td>
	      	<img src="img/<c:out value="${artikel.image_path}" />" class="img-thumbnail" alt="<c:out value="${artikel.bezeichnung}" />">
	      </td>
	      <td>
	      <a href="editartikel.jsp?artikelId=<c:out value="${artikel.id}" />">Bearbeiten</a>
	      </td>
	      <td>
	      	<form method="post" action="RemoveArtikel">
	      	<input type="hidden" id="id" name="id" value="<c:out value="${artikel.id}" />">
	      	<input type="submit" value="Löschen"/>
	      	</form>
	      </td>
	      </tr>
        </c:forEach>
	  	</tbody>
		</table>
	</div>
  </body>
</html>