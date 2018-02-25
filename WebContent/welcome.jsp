<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome..........</h1>



<%

response.setHeader("Cache-Control","no-cach,no-store,must-revalidate");

if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp"); 
}


%>
welcome ${username}

<a href="videos.jsp">Videos</a>

<form action="Logout">
<input type="submit" value="Logout">

</form>

</body>
</html>