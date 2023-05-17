<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">	
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase","root","Admin123");

System.out.println("JDBC connected successfully");

String name = request.getParameter("name");
String pass = request.getParameter("password");

PreparedStatement pst=conn.prepareStatement("select * from user1 where Username=? and Password=?");
pst.setString(1, name);
pst.setString(2, pass);

ResultSet rs = pst.executeQuery();
if(rs.next())
	{
	out.println("Login Success");
		response.sendRedirect("Welcome.jsp");
	}
else
	{
		out.println("Login Failed");
		response.sendRedirect("Error.jsp");
	}





%>
</body>
</html>