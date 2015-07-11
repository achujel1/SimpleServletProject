<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<form action="Process.jsp" method="post">

		<!-- We are setting some values -->
		<br> User ID: <input type="text" name="userId"></input> <br>
		User Name: <input type="text" name="username"></input> <br>
		Address Line 1: <input type="text" name="address1"></input> <br>
		Address Line 2: <input type="text" name="address2"></input> <br>
		City: <input type="text" name="city"></input> <br> State: <input
			type="text" name="state"></input> <br> Pin code: <input
			type="text" name="pincode"></input><input type="submit" /><br>

	</form>
</body>
</html>