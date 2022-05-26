<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "javax.servlet.*"%>
<%@ include file="getcon.jsp" %>
<%@ page import = "javax.servlet.http.*"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/userhome.css">
<style>
table, th, td {
border: 1px solid black;
border-collapse: collapse;
}
th, td {
padding: 5px;
text-align: left;
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
<%
try
{
	String email=(String)request.getSession().getAttribute("email");

/* Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost/hi1";
String username="root";
String password="190030707@s17";

Connection conn=DriverManager.getConnection(url,username,password); */
String query= "SELECT * from sdpsm";
PreparedStatement stmt=conn.prepareStatement("SELECT * from sdpsign where email=?");
stmt.setString(1,email);
ResultSet rs=stmt.executeQuery();
while(rs.next())
{

%>
<table style="width:75%">
<tr>
<th>Email</th>
<td><%=rs.getString("email") %></td>
</tr>
<tr>
<th>Fullname</th>
<td><%=rs.getString("fullname") %></td>
</tr>
<tr>
<th>State</th>
<td><%=rs.getString("state") %></td>
</tr>
<tr>
<th>Mobile Number</th>
<td><%=rs.getString("number") %></td>
</tr>
<tr>
</table>
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
</html> 