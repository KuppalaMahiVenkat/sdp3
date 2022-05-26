<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "javax.servlet.*"%>
<%@ page import = "javax.servlet.http.*"%>
<%@ include file="getcon.jsp" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/polhome.css">
</head>
<body>
<div class="navbar">
	<a href="/sendmesp">Send Message</a>
	<a href="/viewmessage2">Sent Messages</a>
	<a href="/rms1">View Messages</a>
	<a href="/logout" class="right">Logout</a>
  </div>
<%
try{
	int f=0;
	String query=" select * from sdpsign";
String email=(String)request.getSession().getAttribute("email");
String tomail=request.getParameter("toemail");
String msg=request.getParameter("msg");
/* Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost/hi1";
String username="root";
String password="190030707@s17";
Connection conn=DriverManager.getConnection(url,username,password);*/
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(query);
java.util.Date date=new java.util.Date();
java.sql.Date sqlDate=new java.sql.Date(date.getTime());
java.sql.Timestamp sqlTime=new java.sql.Timestamp(date.getTime());
while(rs.next()){
	if(tomail.equals(rs.getString(1))){
		f=1;
		break;
	}
}
if(f==1){
PreparedStatement stmt=conn.prepareStatement("insert into sdpsm ( value_from, valuemsg, value_to,valuedate, valuedtime) values (?,?,?,?,?)");

stmt.setString(1,email);
stmt.setString(2,msg);
stmt.setString(3,tomail);
stmt.setDate(4,sqlDate);
stmt.setTimestamp(5,sqlTime);
int n = stmt.executeUpdate();
if(n>0){
	response.sendRedirect("/polhome");
}
}
else
{
	response.sendRedirect("pne");
}
}
catch(Exception e){
	 e.printStackTrace();
}

%>
</body>
</html>