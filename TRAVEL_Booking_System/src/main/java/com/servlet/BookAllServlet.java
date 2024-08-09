package com.servlet;
/**
 * Servlet implementation class AppliyjobServlet
 */

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BookAllDAO;
import com.db.DBConnect;
import com.entity.ApplyUser;


@WebServlet("/Trainbook")
@MultipartConfig
public class BookAllServlet extends HttpServlet {
	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
		int userid=Integer.parseInt(req.getParameter("userid"));
		String username=req.getParameter("username");
    	String email=req.getParameter("email");
    	String state=req.getParameter("state");
    	String dist=req.getParameter("dist");
    	 String name = req.getParameter("name");
	     String Locationstart = req.getParameter("Locationstart"); 
		 String Locationend = req.getParameter("Locationend"); 
		 String StartTime = req.getParameter("StartTime"); 
		 String EndTime = req.getParameter("EndTime"); 
		 String StartDate = req.getParameter("StartDate"); 
		 String EndDate = req.getParameter("EndDate"); 
		 String description = req.getParameter("description"); 
		 String facility = req.getParameter("facility"); 
		 String bookstatus = req.getParameter("bookstatus"); 
		  
    	
		HttpSession session= req.getSession();
		if (name != null && !name.equals("") && email != null && !email.equals("") && state != null && !state.equals("")
				&& dist != null && !dist.equals("")) {
		try {
    		
	    	
        	BookAllDAO dao=new BookAllDAO(DBConnect.getConn());
        	 
        	if (bookstatus=="Hotel" && bookstatus != null && !bookstatus.equals("") ) {
        		ApplyUser a1=new  ApplyUser(userid,username,email,state,dist,name,Locationstart,StartDate,EndDate,description,facility,"");
        		boolean f1=dao.BookAllH(a1);
        		 if (f1) {
      				session.setAttribute("succMsg", " Form Filled Successfully ..");
      				resp.sendRedirect("Book.jsp");
      			}else {
      				session.setAttribute("succMsg", "Error: Problem in Server Side..");
      				resp.sendRedirect("Book.jsp");
      			}
			}
        	
        	ApplyUser a=new  ApplyUser(userid,username,email,state,dist,name,Locationstart,Locationend,StartTime,EndTime,StartDate,EndDate,"");
        	 
        	boolean f=dao.BookAll(a);
        	 
        	 
        	 
        	 if (f) {
    				session.setAttribute("succMsg", " Form Filled Successfully ..");
    				resp.sendRedirect("Book.jsp");
    			}else {
    				session.setAttribute("succMsg", "Error: Problem in Server Side..");
    				resp.sendRedirect("Book.jsp");
    			}
        	 
        	
		} catch (Exception e) {
			e.printStackTrace();
		}
		}else {
			session.setAttribute("succMsg", "All Form filled required..");
			resp.sendRedirect("Book.jsp");
		}
    	
    }
}










