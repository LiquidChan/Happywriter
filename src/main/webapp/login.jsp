<!doctype html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

    <title>HappyWriter Login</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <form class="form-signin" action="validate.jsp" method="post">
    <%
  	boolean isSet = (request.getParameter("error") == null);
  	if(!isSet)
  	{
  	%>
  	<div class="alert alert-danger" role="alert">
		Falsche Username / Passwort kombination
	</div>
	<%
  	}
	%>
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label for="inputUser" class="sr-only">Username</label>
      <input type="text" name="inputUser" id="inputUser" class="form-control" placeholder="Username" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" name="inputPassword" id="inputPassword" class="form-control" placeholder="Password" required>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
  </body>
</html>