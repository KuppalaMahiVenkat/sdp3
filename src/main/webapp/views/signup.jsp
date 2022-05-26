<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head><title>Add record</title>
<link rel="stylesheet" href="/resources/css/style1.css">
</head>
<body>
	<div class="navbar">
  <a href="/">Home</a>
  <a href="/aboutus">About us</a>
  <a href="/signup">signup</a>
   <a href="/forget"> User Forgot/Change Password</a>
   <a href="/pforget">Politician  Forgot/Change Password</a>
  <a href="/login" class="right">Login</a>
  </div><br>
<center>
<div class="signin">
<h3 align="center">signup</h3>

<form:form method="post" action="/signsub" modelAttribute="sig">
<form:input path="email" type="email" placeholder="Enter Employee email"/><br><br>
<form:input path="password" type="password" placeholder="Enter Employeepassword"/><br><br>
<form:input path="fullname" type="text" placeholder="Enter Employee fname"/><br><br>
<form:input path="number" type="number" placeholder="Enter Employee mobile"/><br><br>
<form:input path="state" type="text" placeholder="Enter Employee state"/><br><br>
<input type="submit" value="signup"/>
</form:form>
</div>
</center>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
%>
</body>
</html>