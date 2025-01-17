package vaibhao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reg")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		out.println("<h1>Name is " + name + "</h1>");
		out.println("<h1>Email is " + email + "</h1>");
		out.println("<h1>Contact is " + contact + "</h1>");
		out.println("<h1>Username is " + username + "</h1>");
		out.println("<h1>Password is " + password + "</h1>");
		Register r = new Register();
		r.setName(name);
		r.setEmail(email);
		r.setContact(contact);
		r.setUsername(username);
		r.setPassword(password);

		try {
			DAO d = new DAO();
			boolean b = d.isRegister(r);
			if (b) {
				out.println("<h1> Registration Successfull </h1>");
			} else {
				out.println("<h1> Registration Failed</h1>");
			}
		} catch (Exception ex) {
			System.out.println("Error is " + ex);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
