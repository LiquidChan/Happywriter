<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Validate</title>
	</head>
	<body><!-- values given at login page are taken here and checks if the valid details are not -->
		<%
		String username=request.getParameter("inputUser");
		String password=request.getParameter("inputPassword");
		if(username.equals("admin") && password.equals("admin")){
			session.setAttribute("user", username);//session starten
			session.setAttribute("admin", 1);//session starten
			response.sendRedirect("index.jsp"); //zum shop redirecten
		}
		else if(username.equals("test") && password.equals("test")){
			session.setAttribute("user", username);//session starten
			response.sendRedirect("index.jsp"); //zum shop redirecten
		}else{
			
			//falls infos falsch
			response.sendRedirect("login.jsp?error=1");
		}
		%>
	</body>
</html>