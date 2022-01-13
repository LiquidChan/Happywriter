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
        SELECT * FROM artikel where id=${param.artikelId};
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
	          <a class="nav-link active" aria-current="page" href="user">User</a>
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
	  <c:forEach var="artikel" items="${listArtikel.rows}">
	  <div class="row">
	    <div class="col">
			<form method="post" action="EditArtikel">
				<input type="hidden" id="id" name="id" value="<c:out value="${artikel.id}" />">
				<label for="bezeichnung">Bezeichnung</label>
		      	<input type="text" name="bezeichnung" id="bezeichnung" class="form-control" placeholder="Bezeichnung" value="<c:out value="${artikel.bezeichnung}" />" required autofocus>
		      	<label for="preis">Preis</label>
		      	<input type="text" name="preis" id="preis" class="form-control" placeholder="Preis" required value="<c:out value="${artikel.preis}" />">
		      	<label for="image_path">Bild Pfad</label>
		      	<input type="text" name="image_path" id="image_path" class="form-control" placeholder="Bild Pfad" required value="<c:out value="${artikel.image_path}" />"><br>
		      	<input type="submit">
			</form>
		</div>
	  </div>
	  </c:forEach>
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

  </body>
</html>