<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Testing jsps</title>
</head>
<body>
	<h3>This is a test</h3>

	<!-- Testing Java in .jsp -->
	<%
		int a = 10;
		int b = 20;
		int k;
		k = a + b;

		// You can also prit values like this:
		out.println("Priting the value of k with out.println() method in Java declaration"
				+ k);
	%>

	<!-- Testing the getting of values from Java declaration in .jsp -->
	<h3>
		Printing k in simple HTML format using Java decalraation
		<%=k%></h3>

	<!-- Here we are going to test method declaring in .jsp file -->
	<%!public int add(int a, int b) {
		return a + b;
	}%>

	<!-- Here we are testing the value getting from Java method declaration in .jsp -->
	<h3>
		The value of k now is:
		<%=k = add(1, 2)%></h3>

	<!-- Testing HTML inside Java tag -->
	<%
		for (int i = 1; i <= 5; i++) {
	%>
	<!-- Really interesting and cool thing here :) -->
	<br> This is the HTML value inside JAVA tag, i:
	<%=i%>
	<%
		}
	%>
</body>
</html>