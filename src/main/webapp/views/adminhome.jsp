<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/adminhome.css">
<style>
body {
  background-image: url('/resources/images/admin.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
.signin
{
    background-color: black;
    padding: 40px;
    width: 700px;
    margin: auto;
    margin-top: 80px;
    height: 310px;
    margin-left: 180x;
}
</style>
</head>
<body>
	<div class="navbar">
	<a href="/">Home</a>
	<a href="/delete">Delete</a>
	<a href="/viewall">View users</a>
	<a href="/viewpol">View Politicians</a>
	<a href="/addpol">Add Politicians</a>
	<a href="/logout" class="right">Logout</a>
  </div><br>
      <%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
      String email=(String)request.getSession().getAttribute("email");
      out.println("welcome"+"   "+email);
  %>  
  <center>
   </center>
</body>
</html>