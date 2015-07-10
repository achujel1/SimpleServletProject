<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="org.roba.javabrains.dto.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
</head>
<body>
	<h3>Login successful</h3>
	<!-- Commenting this part for JSTL test -->
	<%-- <%
		/* Here we are using Model: */
		// User user = (User) session.getAttribute("user");

		/* But we can also use RequestDispatcher */
		User user = (User) request.getAttribute("user");
	%> --%>

	<!-- We are going to use JSTL here: -->
	<jsp:useBean id="user" class="org.roba.javabrains.dto.User"
		scope="request">

		<!-- This property is creating new user obejct with value 'NewUser': -->
		<jsp:setProperty property="username" name="user" value="NewUser"></jsp:setProperty>

	</jsp:useBean>

	Hello
	<jsp:getProperty property="username" name="user" />
	<!-- Also, commenting this part for JSTL test: -->
	<%-- <%=user.getUsername()%> --%>
	!

</body>
</html>