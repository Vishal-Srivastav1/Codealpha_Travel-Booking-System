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

import com.dao.TrainDAO;
import com.db.DBConnect;
import com.entity.Train;
@WebServlet("/add_Train")
public class TrainScheduleServlet extends HttpServlet {
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
        String Trains=        req.getParameter("Trains");
  		String status=        req.getParameter("status");
  		String Locationstart= req.getParameter("Locationstart");
  		String Locationend=   req.getParameter("Locationend");
  		String Sleeper_SL=    req.getParameter("Sleeper_SL");
  		String AC_3_Tier_3A=  req.getParameter("AC_3_Tier_3A");
  		String AC_2_Tier_2A=  req.getParameter("AC_2_Tier_2A");
  		String StartDate=     req.getParameter("StartDate");
  		String EndDate=       req.getParameter("EndDate");
  		String StartTime=     req.getParameter("StartTime");							
  		String EndTime=       req.getParameter("EndTime");
  		
  		 HttpSession session= req.getSession();
			if (Trains != null && !Trains.equals("") && status != null && !status.equals("")
					&& Locationstart != null && !Locationstart.equals("") && Locationend != null && !Locationend.equals("")
					&&  Sleeper_SL != null && ! Sleeper_SL.equals("") && AC_3_Tier_3A !=null && !AC_3_Tier_3A.equals("")
					&& AC_2_Tier_2A != null && !AC_2_Tier_2A.equals("") && StartDate != null && !StartDate.equals("") && EndDate != null && !EndDate.equals("") 
					&& StartTime != null && !StartTime.equals("") && EndTime != null && !EndTime.equals("") ) {
		  try {
		
    		Train t=new Train();
    		t.setTrains(Trains);
    		t.setStatus(status);
    		t.setLocationstart(Locationstart);
    		t.setLocationend(Locationend);
    		t.setSleeper_SL(Sleeper_SL);
    		t.setAC_3_Tier_3A(AC_3_Tier_3A);
    		t.setAC_2_Tier_2A(AC_2_Tier_2A);
    		t.setStartDate(StartDate);
    		t.setEndDate(EndDate);
    		t.setStartTime(StartTime);
    		t.setEndTime(EndTime);
    		
    		
    		
    		TrainDAO dao=new TrainDAO(DBConnect.getConn());
    		
    		boolean f= dao.TrainSchedule(t);
    		if (f) {
				session.setAttribute("succMsg", "TrainSchedule Successfully..");
				resp.sendRedirect("Schedule-Trains.jsp");
			}else {
				session.setAttribute("succMsg", "Error: Problem in Server Side..");
				resp.sendRedirect("Schedule-Trains.jsp");
			}
    	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			}else {
				session.setAttribute("succMsg", " All Fields required..");
				resp.sendRedirect("Schedule-Trains.jsp");
			}
    	
    }
}
