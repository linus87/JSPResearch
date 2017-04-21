package com.linus.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.linus.annotations.Editable;
import com.linus.util.AnnotationUtil;

/**
 * Servlet implementation class AnnotationServlet
 */
@WebServlet("/AnnotationServlet")
public class AnnotationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Editable(false)
	public String demo = "demo";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnnotationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String output = "";
		output += "Property demo is editable? : " + AnnotationUtil.isEditable(AnnotationServlet.class.getName(), "demo"); 
		response.getWriter().write(output);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
