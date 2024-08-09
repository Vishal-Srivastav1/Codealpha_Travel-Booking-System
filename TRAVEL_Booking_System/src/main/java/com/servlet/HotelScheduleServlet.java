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
import com.dao.HotelDAO;
import com.db.DBConnect;
import com.entity.Flight;
import com.entity.Hotel;
@WebServlet("/Schedule_Hotel")
public class HotelScheduleServlet extends HttpServlet {
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
        String HotelN=        req.getParameter("HotelN");
  		String status=        req.getParameter("status");
  		String price=            req.getParameter("price");
  		String Location = req.getParameter("Location");
  		String StartDate=     req.getParameter("StartDate");
  		String EndDate=       req.getParameter("EndDate");
  		String Facility=     req.getParameter("Facility");							
  		String description=       req.getParameter("description");
  		
  		                 
  		 HttpSession session= req.getSession();
			if (HotelN != null && !HotelN.equals("") && status != null && !status.equals("") && price != null && !price.equals("")
					&& Location != null && !Location.equals("")  && StartDate != null && !StartDate.equals("") && EndDate != null && !EndDate.equals("") 
					&& Facility != null && !Facility.equals("") && description != null && !description.equals("") ) {
		  try {
		
    		Hotel t=new Hotel();
    		t.setHotelN(HotelN);
    		t.setStatus(status);
    		t.setPrice(price);
    		t.setLocation(Location);
    		t.setStartDate(StartDate);
    		t.setEndDate(EndDate);
    		t.setFacility(Facility);
    		t.setDescription(description);
    		
    		
    		
    		HotelDAO dao=new HotelDAO(DBConnect.getConn());
    		
    		boolean f= dao.HotelSchedule(t);
    		if (f) {
				session.setAttribute("succMsg", "HotelSchedule Successfully..");
				resp.sendRedirect("Schedule-Hotel.jsp");
			}else {
				session.setAttribute("succMsg", "Error: Problem in Server Side..");
				resp.sendRedirect("Schedule-Hotel.jsp");
			}
    	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			}else {
				session.setAttribute("succMsg", " All Fields required..");
				resp.sendRedirect("Schedule-Hotel.jsp");
			}
    	
    }
}
