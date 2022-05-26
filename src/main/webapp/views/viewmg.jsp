<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<html>
<head>
<title>Show users</title>
<link rel="shortcut icon" href="data:" />
<link rel="stylesheet" href="/resources/css/viewpols.css">
</head>
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
     <th>To</th>
     <th>Message</th>
    </tr>
    <c:forEach var="user" items="${msg}">
     <tr>
      <td>${user.getFrom()}</td>
      <td>${user.getMessage()}</td>
      
     </tr>
    </c:forEach>
   </table>
   </center>
    <%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
   %>
</body>
</html>