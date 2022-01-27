package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.registerDao;
import model.Registration;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//User Registration Page Information
		String firstname = request.getParameter("fname");
		String lastname = request.getParameter("lname");
		String deg = request.getParameter("des");
		String empId = request.getParameter("empId");
		String seatNo = request.getParameter("seatno");
		String pcNo = request.getParameter("pcno");
		String Ip = request.getParameter("ip");
		String contact = request.getParameter("IN");
		String psw = request.getParameter("password");

Registration register=new Registration(firstname,lastname,deg,empId,seatNo,pcNo,Ip,contact,psw);

registerDao dao= new registerDao();

int result;


try {
	result = dao.insert(register);
	if(result==1) {
		response.sendRedirect("happy.jsp");
	}
	else {
		response.sendRedirect("sorry.jsp");
	}
	//response.getWriter().print(result);

} catch (ClassNotFoundException | SQLException |IOException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

		doGet(request, response);
	}

}
