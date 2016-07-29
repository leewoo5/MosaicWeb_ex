package com.hybrid.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HelloServlet() {
        super();
        System.out.println("############");
        System.out.println("HelloServlet");
        System.out.println("############");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("#######");
        System.out.println("DoGet");
        System.out.println("#######");
        
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
       	out.println("<title>HelloServlet</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("Method= " + request.getMethod());
        out.println("<br>");
        out.println("remoteAddr= " + request.getRemoteAddr());
        for (int i = 0; i < 10; i++) {
        	out.println("<h1>HelloServlet</h1> " + i);
        }
        out.println("</body>");
        out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
     	System.out.println("############");
        System.out.println("DoGet");
	    System.out.println("############");
	}

}
