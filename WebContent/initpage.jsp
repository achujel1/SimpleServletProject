<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<%!public void jspInit() {
		// Getting value from configFile
		String defaultUser = getServletConfig().getInitParameter("defaultUser");
		// Setting the same name to context
		ServletContext context = getServletContext();
		context.setAttribute("defaultUser", defaultUser);
	}%>

<body>
	The default user from Servlet config is:
	<%=getServletConfig().getInitParameter("defaultUser")%>
	the value in the Servlet context is:
	<%=getServletContext().getAttribute("defaultUser")%>
</body>
</html>