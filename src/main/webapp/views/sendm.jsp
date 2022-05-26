<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/sendm.css">
<body>
	<div class="navbar">
	<a href="/userhome">Home</a>
	<a href="/sendmessage">Send Message</a>
	<a href="/viewmessage1">Sent Message</a>
	<a href="/viewpol1">View Politicians</a>
	<a href="/rms">View Messages</a>
	<a href="/logout" class="right">Logout</a>
  </div><br>
  </div><br>
  <center>
  <div class="signin">
<form method="post" action="/send">
     <input type="email" name ="toemail" placeholder="enter to mail"/><br><br>
     <input type="text" name ="msg" placeholder="enter message"/><br><br>
     <input type="submit" value="Send Message"/>
     </form>
     </div>
     </center>

</body>
</html>