package com.linus.servlets;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PathServlet
 */
@WebServlet("/path")
public class PathServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final Logger log = Logger.getLogger(PathServlet.class.getName());
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PathServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		log.info("Request URL: " + request.getRequestURL());
		log.info("Request URI: " + request.getRequestURI());
		log.info("Web Application Root Path: " + request.getServletContext().getRealPath(""));
		log.info("Web Application Root Path: " + request.getServletContext().getRealPath("/"));
		log.info("File Real Path: " + request.getServletContext().getRealPath(request.getRequestURI()));
		log.info("File Real Path: " + request.getServletContext().getRealPath("/login.jsp"));
		log.info("File Real Path: " + request.getServletContext().getRealPath("login.jsp"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}