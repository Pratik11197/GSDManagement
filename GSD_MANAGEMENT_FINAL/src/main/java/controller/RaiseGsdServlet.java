package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RaiseGsdDao;
import model.RaiseGSD;

/**
 * Servlet implementation class RaiseGsdServlet
 */
@WebServlet("/RaiseGsdServlet")
public class RaiseGsdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RaiseGsdServlet() {
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
		// Take Input From User To Raise GSD
		
		String remedy = request.getParameter("gsd");
		String desc = request.getParameter("w3review");
		String contact= request.getParameter("IN");
		String Pc_No = request.getParameter("pcno");
		String GsdNo = request.getParameter("GSDNO");
		
		RaiseGSD gsd=new RaiseGSD(remedy,desc,contact,Pc_No,GsdNo);
		RaiseGsdDao gsddao=new RaiseGsdDao();
		
		int result;
		try {
			result=gsddao.insert(gsd);
			if(result==1) {
				response.sendRedirect("TicketRaised.jsp");
			}
			else {
				response.sendRedirect("sorry.jsp");
			}

			
			
		}
		catch(Exception e) {
			
		}
		
		doGet(request, response);
	}

}
