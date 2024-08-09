package com.servlet;
/**
 * Servlet implementation class DeleteJobServlet
 */

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BookAllDAO;
import com.db.DBConnect;

@WebServlet("/deleteform")
public class DeleteformServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			 
			BookAllDAO dao=new BookAllDAO(DBConnect.getConn()); 		
    		boolean f= dao.deleteform(id);
			
    		HttpSession session=req.getSession();
    		
    		if (f) {
				session.setAttribute("succMsg", " Delete Successfully..");
				resp.sendRedirect("index.jsp");
			}else {
				session.setAttribute("succMsg", "Error: Problem in Server Side..");
				resp.sendRedirect("index.jsp");
			}
    		
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
