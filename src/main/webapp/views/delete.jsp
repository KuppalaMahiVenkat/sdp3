<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<title>Add record</title>
<link rel="stylesheet" href="/resources/css/delete.css">
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
<div class="signin">
<form:form method="post" action="/del1" modelAttribute="d">
<form:input path="email" type="email" placeholder="Enter the emailof the user or politician to delete"/><br><br>
<input type="submit" value="Delete"/>
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