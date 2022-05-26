<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/userhome.css">
<style>
body {
  background-image: url('/resources/images/ra.jpg');
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
	<a href="/userhome">Home</a>
	<a href="/sendmessage">Send Message</a>
	<a href="/viewmessage1">Sent Message</a>
	<a href="/viewpol1">View Politicians</a>
	<a href="/rms">View Messages</a>
	<a href="/userprofile">My Profile</a>
	<a href="/logout" class="right">Logout</a>
  </div><br>
  <%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
     String email=(String)request.getSession().getAttribute("email");
     //out.println("welcome"+"   "+email);
   //if(request.getSession().getAttribute("email")==null){
    	//response.sendRedirect("/");
    	
    %>  
   <center>
   
   <div class="signin">
   <h1 style="color:red;">Instructions</h1>
    <ul style="color:white;">After sending message successfully you will redirect to this page.</ul>
    <ul style="color:white;">You can view the politicians at view politicians option.</ul>
    <ul style="color:white;">You can view notifications on view messages options.</ul>
    <ul style="color:white;">You can view the messages forwarded by you on sent messages option</ul>


</div>
   </center>
</body>
</html>