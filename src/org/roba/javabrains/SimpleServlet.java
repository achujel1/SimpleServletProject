package org.roba.javabrains;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SimpleServlet
 */
@WebServlet(description = "A simple servlet", urlPatterns = { "/SimpleServletPath" }, initParams = { @WebInitParam(name = "defaultUser", value = "John Doe") })
public class SimpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		String userName = request.getParameter("name");

		HttpSession session = request.getSession();
		ServletContext context = request.getServletContext();

		if (userName != "" && userName != null) {

			// Here we are saving userName in this session
			session.setAttribute("savedUserName", userName);

			// Here we are saving userName in application
			context.setAttribute("savedUserName", userName);
		}
		writer.println("Request parameter has userName as: " + userName);

		// Here we are calling userName from saved place in this session
		writer.println("Session parameter has username as: "
				+ (String) session.getAttribute("savedUserName"));

		// Here we are calling userName from saved place in application
		writer.println("Session parameter has username as: "
				+ (String) context.getAttribute("savedUserName"));

		// Here we are calling defaultUser from saved place with annotation
		writer.println("Init parameter has default username as: "
				+ getServletConfig().getInitParameter("defaultUser"));
	}
}
