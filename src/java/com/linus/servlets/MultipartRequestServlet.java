package com.linus.servlets;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class MultipartRequestServlet
 */
@WebServlet("/request/multipart")
@MultipartConfig(maxFileSize = 10000, maxRequestSize = 100000)
public class MultipartRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MultipartRequestServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// readFromBufferedReader(request, response);

		// readFromInputStream(request, response);

		RequestDispatcher rd = this.getServletContext().getRequestDispatcher(
				"/request/multipart_form.jsp");
		rd.forward(request, response);
	}

	/**
	 * If we read from parts, then we can't use request's BufferedReader nor ServletInputStream. And 
	 * MultipartConfig annotation must be added on Servlet to enable multipart request.
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void readFromParts(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		java.util.Collection<Part> parts = request.getParts();
		Iterator<Part> iter = parts.iterator();
		while (iter.hasNext()) {
			Part part = iter.next();

			part.getName();
			part.getContentType();
			InputStream is = part.getInputStream();
			byte[] b = new byte[20];
			StringBuffer input = new StringBuffer();

			while (is.read(b) > 0) {
				// behave like request's BufferedReader
				input.append(new String(b));
			}
		}
	}

	/**
	 * Get request body by using request's BufferedReader. This method could
	 * only be used to read text values.
	 * 
	 * And, if you used this method, you can't use {@link readFromInputStream}
	 * method anymore.
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void readFromBufferedReader(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		BufferedReader br = request.getReader();
		StringBuffer content = new StringBuffer();
		if (br.ready()) {
			String line = br.readLine();
			while (line != null) {
				content.append(line);
				line = br.readLine();
			}
		}
		br.close();

		request.setAttribute("content", content.toString());
	}

	/**
	 * Get request body by using request's InputStream. This method is equal to
	 * {@link readFromBufferedReader} because all bytes are converted to String
	 * value.
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void readFromInputStream(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ServletInputStream sis = request.getInputStream();

		byte[] b = new byte[20];
		StringBuffer input = new StringBuffer();

		while (sis.read(b) > 0) {
			// behave like request's BufferedReader
			input.append(new String(b));
		}

		sis.close();
		request.setAttribute("content", input.toString());
	}

}
