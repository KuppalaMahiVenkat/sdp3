<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<html>
<head>
<title>Show users</title>
<link rel="shortcut icon" href="data:" />
<link rel="stylesheet" href="/resources/css/viewpols.css">
<style>

body {
background-image: url('/resources/images/admin.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  
  
}
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

</head>
<body>
<div class="navbar">
	<a href="/adminhome">Home</a>
	<a href="/delete">Delete</a>
	<a href="/viewall">View users</a>
	<a href="/viewpol">View Politicians</a>
	<a href="/logout" class="right">Logout</a>
  </div><br>
  <center>
	<table
    class="table table-striped table-hover table-condensed table-bordered">
    <tr>
     <th>Email</th>
     <th>FName</th>
     <th>State</th>
     <th>Location</th>
    </tr>
    <c:forEach var="user" items="${politicians}">
     <tr>
      <td>${user.getEmail()}</td>
      <td>${user.getFullname()}</td>
      <td>${user.getState()}</td>
       <td>${user.getLocation()}</td>
      
     </tr>
    </c:forEach>
   </table>
   </center>
    <%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
   %>
</body>
</html>