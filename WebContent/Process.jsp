<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Process</title>
</head>
<body>
	<jsp:useBean id="user" class="org.roba.javabrains.dto.User"
		scope="request">

		<!-- Instead of writing all the names of properties:
		<jsp:setProperty property="userName" name="user"></jsp:setProperty>
		<jsp:setProperty property="address1" name="user"></jsp:setProperty>
		<jsp:setProperty property="address2" name="user"></jsp:setProperty>
		...
		we can write simply write: -->
		<jsp:setProperty property="*" name="user"></jsp:setProperty>

	</jsp:useBean>

	<!-- Here we are getting all of the properties we had set in LoginTwo.jsp: -->
	<br> Hello
	<jsp:getProperty property="username" name="user" />
	<br> Address 1
	<jsp:getProperty property="address1" name="user" />
	<br> Address 2
	<jsp:getProperty property="address2" name="user" />
	<br> City
	<jsp:getProperty property="city" name="user" />
	<br> State
	<jsp:getProperty property="state" name="user" />
	<br> Pincode
	<jsp:getProperty property="pincode" name="user" />

</body>
</html>