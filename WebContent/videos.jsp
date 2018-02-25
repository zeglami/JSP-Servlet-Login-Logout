<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Liste des videos</h1>
<%
response.setHeader("Cache-Control","no-cach,no-store,must-revalidate");

if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp"); 
}


%>

<h1>Secure page: videos</h1>


</body>
</html>