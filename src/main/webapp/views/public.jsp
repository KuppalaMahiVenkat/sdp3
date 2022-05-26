<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/psendm.css">
</head>
<body>
<body>
	<div class="navbar">
	<a href="/polhome">Home</a>
	<a href="/sendmesp">Send Message</a>
	<a href="/viewmessage2">Sent Messages</a>
	<a href="/rms1">View Messages</a>
	<a href="/logout" class="right">Logout</a>
  </div><br>
  <center>
   <div class="signin">
<form method="post" action="/sendpublic">
     <input type="text" name ="msg" placeholder="enter message"/><br><br>
     <input type="submit" value="Send Message"/><br><br>
     </form>
     </div>
     </center>
    
    

</body>
</html>