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
<link rel="stylesheet" href="/resources/css/polhome.css">
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
	<a href="/">Home</a>
	<a href="/sendmesp">Send Message</a>
	<a href="/viewmessage2">Sent Messages</a>
	<a href="/rms1">View Messages</a>
	<a href="/logout" class="right">Logout</a>
  </div><br>
<form method="post">
<center>
<%
try
{
	String email=(String)request.getSession().getAttribute("email");


PreparedStatement stmt=conn.prepareStatement("SELECT * from sdppol where email=?");
String query= "SELECT * from sdpsm";
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
<th>location</th>
<td><%=rs.getString("location") %></td>
</tr>
<tr>
<th>password</th>
<td><%=rs.getString("password") %></td>
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