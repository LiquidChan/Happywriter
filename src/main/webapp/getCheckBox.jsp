<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*" %>    
    	<%
String inhalte ="";
String inhalt[]=request.getParameterValues("inhalt");
for(int i=0; i<inhalt.length;i++){
	inhalte+=inhalt[i]+" ";
}
        try{
        	Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Happy", "root","");
    		Statement st = con.createStatement();
    		int i = st.executeUpdate("INSERT INTO bestellte_konfiguration(inhalt_id) values('"+inhalte+"')");
        }
        catch(Exception e){
}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>