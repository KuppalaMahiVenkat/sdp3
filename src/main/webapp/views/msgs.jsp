<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
<div class="navbar">
	<a href="/">Home</a>
	<a href="/login">Login</a>
	<a href="/sendmessage">Send Message</a>
	<a href="/viewmessage">View Messages</a>
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
    <c:forEach var="user" items="${msg}">
     <tr>
      <td>${user.getMessage()}</td>
      <td>${user.getTo()}</td>
      
     </tr>
    </c:forEach>
   </table>
   </center>
    <%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
   %>
</body>
</html>

</body>
</html>