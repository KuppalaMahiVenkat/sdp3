<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<title>Add record</title>
<link rel="stylesheet" href="/resources/css/ssm.css">
</head>
<body>
 
	<div class="navbar">
	<a href="/">Home</a>
	<a href="/signup">Sign Up</a>
  </div>
<br>
<br>
<center>
<div class="signin">
<h1>Please enter the email which you used to login to see messages</h1>
<h3 align="center">Login</h3>
<form:form method="post" action="/recm" modelAttribute="vvm">
<form:input path="email" type="email" placeholder="Enter Email"/><br><br>
<input type="submit" value="See"/>
</form:form>
</div>
<center>
<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
   //if(request.getSession().getAttribute("email")==null){
    	//response.sendRedirect("/");
    	
    %>  
</body>
</html>