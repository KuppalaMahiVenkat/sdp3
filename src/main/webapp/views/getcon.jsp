<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "javax.servlet.*"%>
<%@ page import = "javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost/sdp3";
String username="root";
String password="Ma@12345";
Connection conn=DriverManager.getConnection(url,username,password);
%>

</body>
</html>