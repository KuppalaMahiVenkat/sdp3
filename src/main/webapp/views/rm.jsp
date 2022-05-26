<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "javax.servlet.*"%>
<%@ page import = "javax.servlet.http.*"%>
<%@ include file="getcon.jsp" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/userhome.css">
<style>
body {
  background-image: url('/resources/images/ra.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  
  
}
table, th, td {
  border: 1px solid white;
  border-collapse: collapse;
  padding:8px;
   
}
th, td {
  background-color: black;
  
  height: 70px;
  
  color:white;
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
	<a href="/logout" class="right">Logout</a>
  </div><br>
<form method="post">
<center>
<table>
<tr>
<td>SENT_FROM</td>
<td>MESSAGE</td>
<td>RECEIVED_DATE</td>
<td>RECEIVED_TIME</td>
</tr>
<%
try
{
	String email=(String)request.getSession().getAttribute("email");

	/* Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost/hi1";
String username="root";
String password="190030707@s17";
String query= "SELECT * from sdpsm";
Connection conn=DriverManager.getConnection(url,username,password); */
String query= "SELECT * from sdpsm";
PreparedStatement stmt=conn.prepareStatement("SELECT * from sdpsm where value_to=?");
stmt.setString(1,email);
ResultSet rs=stmt.executeQuery();
while(rs.next())
{

%>
   <tr>
    <td><%=rs.getString("value_from") %></td>
      <td><%=rs.getString("valuemsg") %></td>
        <td><%=rs.getString("valuedate") %></td>
      <td><%=rs.getString("valuedtime") %></td>
</tr>
        <%

}
%>
    </table>
    </center>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</form>
</body>
<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
   %>
</html> 