<%@ include file="getcon.jsp" %>
<%@ page language="java" pageEncoding="UTF-8"%>
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
String email=request.getParameter("email");
String pass=request.getParameter("password");
String query="select * from sdppol";
//String query1="select * from sdppol";
int f=0,n=0,g=0,m=0;
try{

/* Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost/hi1";
String username="root";
String pass="190030707@s17";
Connection conn=DriverManager.getConnection(url,username,pass);*/

Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(query);
while(rs.next()){
	if(email.equals(rs.getString(1))){
		f=1;
		break;
	}
}
 if(f==1){
	PreparedStatement ps=conn.prepareStatement("update sdppol set password=? where email =?");
	ps.setString(1,pass);
	ps.setString(2,email);
    n=ps.executeUpdate();
    st.executeUpdate("commit");
	if(n>0){
		response.sendRedirect("/success");
	}
	else{
		response.sendRedirect("/perror");
    }
 }
 else{
	 response.sendRedirect("/perror");
 }
	 
}

catch(Exception e){
	 e.printStackTrace();
}

%>
</body>
</html>