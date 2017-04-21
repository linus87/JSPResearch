package com.linus.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestServlet
 */
@WebServlet("/request/parameters")
public class RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher cookieRD = this.getServletContext().getRequestDispatcher("/request/cookies.jsp");
		cookieRD.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String[] skills = request.getParameterValues("skills");
		request.setAttribute("skills", skills);
		
		/*RequestDispatcher cookieRD = this.getServletContext().getRequestDispatcher("/request/cookies.jsp");
		cookieRD.include(request, response);*/
		
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/request/parameters.jsp");
		rd.forward(request, response);
		
		
	}
	
}
