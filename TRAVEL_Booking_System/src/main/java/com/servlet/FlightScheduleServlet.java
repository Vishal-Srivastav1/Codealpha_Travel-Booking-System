package com.servlet;
/**
 * Servlet implementation class AddPostServlet
 */

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.FlightDAO;
import com.db.DBConnect;
import com.entity.Flight;
@WebServlet("/Schedule_Flight")
public class FlightScheduleServlet extends HttpServlet {
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
        String Aeroplain=        req.getParameter("Aeroplain");
  		String status=        req.getParameter("status");
  		String price=            req.getParameter("price");
  		String Locationstart= req.getParameter("Locationstart");
  		String Locationend=   req.getParameter("Locationend");
  		String StartDate=     req.getParameter("StartDate");
  		String EndDate=       req.getParameter("EndDate");
  		String StartTime=     req.getParameter("StartTime");							
  		String EndTime=       req.getParameter("EndTime");
  		
  		 HttpSession session= req.getSession();
			if (Aeroplain != null && !Aeroplain.equals("") && status != null && !status.equals("") && price != null && !price.equals("")
					&& Locationstart != null && !Locationstart.equals("") && Locationend != null && !Locationend.equals("")
				    && StartDate != null && !StartDate.equals("") && EndDate != null && !EndDate.equals("") 
					&& StartTime != null && !StartTime.equals("") && EndTime != null && !EndTime.equals("") ) {
		  try {
		
    		Flight t=new Flight();
    		t.setAeroplain(Aeroplain);
    		t.setStatus(status);
    		t.setPrice(price);
    		t.setLocationstart(Locationstart);
    		t.setLocationend(Locationend);
    		t.setStartDate(StartDate);
    		t.setEndDate(EndDate);
    		t.setStartTime(StartTime);
    		t.setEndTime(EndTime);
    		
    		
    		
    		FlightDAO dao=new FlightDAO(DBConnect.getConn());
    		
    		boolean f= dao.FlightSchedule(t);
    		if (f) {
				session.setAttribute("succMsg", "FlightSchedule Successfully..");
				resp.sendRedirect("Schedule-Aeroplain.jsp");
			}else {
				session.setAttribute("succMsg", "Error: Problem in Server Side..");
				resp.sendRedirect("Schedule-Aeroplain.jsp");
			}
    	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			}else {
				session.setAttribute("succMsg", " All Fields required..");
				resp.sendRedirect("Schedule-Aeroplain.jsp");
			}
    	
    }
}
