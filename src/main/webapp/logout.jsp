<html>
	<body>
		<% session.invalidate(); %> <!-- delete session -->
		<jsp:forward page="login.jsp"/>
	</body>
<html>