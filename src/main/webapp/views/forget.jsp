<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<br>
<br>
<center>
<div class="signin">
<h3 align="center">User Forgot/changePassword</h3>
<form method="post" action="/change">
     <input type="email" name ="email" placeholder="Enter your mail"/><br><br>
     <input type="password" name ="password" placeholder="Enter New Password"/><br><br>
     <input type="submit" value="change"/>
     </form>
     </div>
</center>
</body>
</html>