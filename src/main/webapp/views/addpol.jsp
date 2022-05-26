<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<title>Add record</title>
<link rel="stylesheet" href="/resources/css/delete.css">
</head>
<style>

table, th, td {
  border: 1px solid white;
  border-collapse: collapse;
  padding:8px;
   
}
th, td {
  background-color: black;
  
  height: 70px;
  
  color:white;
}
</style>
<body>
	<div class="navbar">
	<a href="/">Home</a>
	<a href="/delete">Delete</a>
	<a href="/viewall">View users</a>
	<a href="/viewpol">View Politicians</a>
	<a href="/addpol">Add Politicians</a>
	<a href="/logout" class="right">Logout</a>
  </div>
<br>
<br>
<center>
<div class="signin">
<form:form method="post" action="/adp" modelAttribute="ap">
<form:input path="email" type="email" placeholder="Enter politician mail"/><br><br>
<form:input path="password" type="password" placeholder="Enter politician pass"/><br><br>
<form:input path="fullname" type="text" placeholder="Enter politician fullname"/><br><br>
<form:input path="state" type="text" placeholder="Enter politician state"/><br><br>
<form:input path="location" type="text" placeholder="Enter politician location"/><br><br>

<input type="submit" value="Add"/>
</form:form>
</div>
<center>
</body>
</html>