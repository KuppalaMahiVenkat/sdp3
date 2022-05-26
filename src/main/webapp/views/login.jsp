<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<title>Add record</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div class="navbar">
  <a href="/">Home</a>
  <a href="/aboutus">About us</a>
  <a href="/signup">signup</a>
   <a href="/forget"> User Forgot/Change Password</a>
   <a href="/pforget">Politician  Forgot/Change Password</a>
  <a href="/login" class="right">Login</a>
  </div>
  </div>
<br>
<br>
<center>
<div class="signin">
<h3 align="center">Login</h3>
<form:form method="post" action="/loginsub" modelAttribute="log">
<form:input path="email" type="email" placeholder="Enter Employee mail"/><br><br>
<form:input path="password" type="password" placeholder="Enter Employee pass"/><br><br>
<input type="submit" value="login"/>
</form:form>
</div>
<center>
</body>
</html>