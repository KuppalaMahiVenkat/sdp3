<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/sm.css">
</head>
<body>
    <div class="navbar">
	<a href="/">Home</a>
	<a href="/login">Login</a>
	<a href="/sendmessage">Send Message</a>
	<a href="/viewmessage">View Messages</a>
	<a href="/viewpol">View Politicians</a>
	<a href="/logout" class="right">Logout</a>
  </div>
  <center>
  <div class="signin">
  <h3 align="center">signup</h3>
  <form:form method="post" action="/sendmes" modelAttribute="snm">
  <form:input path="to" type="email" placeholder="To mail"/><br><br>
  <form:input path="from" type="email" placeholder="Enter your mail"/><br><br>
  <form:input path="message" type="text" placeholder="write message"/><br><br>
  <input type="submit" value="Send"/>
   </form:form>
   </div>
</center>
<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
   //if(request.getSession().getAttribute("email")==null){
    	//response.sendRedirect("/");
    	
    %>
</body>
</html>