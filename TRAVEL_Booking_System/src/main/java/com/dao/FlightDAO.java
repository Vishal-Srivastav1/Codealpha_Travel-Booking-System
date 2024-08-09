package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Flight;

public class FlightDAO {
	private Connection conn;

	public FlightDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean FlightSchedule(Flight t) {
		boolean f = false;
		try {
			String sql = "insert into FlightData(Aeroplain,StartTime,Locationstart,StartDate,EndTime,Locationend,EndDate,price,status)values(?,?,?,?,?,?,?,?,?)";
			
		  		
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, t.getAeroplain());
			ps.setString(2, t.getStartTime());
			ps.setString(3, t.getLocationstart());
			ps.setString(4, t.getStartDate());
			ps.setString(5, t.getEndTime());
			ps.setString(6, t.getLocationend());
			ps.setString(7, t.getEndDate());	
			ps.setString(8, t.getPrice());	
			ps.setString(9, t.getStatus());
            
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		}
		catch (SQLException se) {
			se.printStackTrace();
			// TODO: handle exception
		}
		return f;
	}

	
	
	public List<Flight> getAeroplainLoc1ORLoc2(String Locationstart,String Locationend) {
		
		List<Flight> list = new ArrayList<>();
		Flight f = null;

		try {
			String sql1 = "select * from FlightData where Locationstart=? or Locationend=? order by idFlight DESC";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setString(1, Locationstart);
			ps.setString(2, Locationend);
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				f = new Flight();
				f.setId(rs.getInt(1));
				f.setAeroplain(rs.getString(2));
				f.setStartTime(rs.getString(3));
				f.setLocationstart(rs.getString(4));
				f.setStartDate(rs.getString(5));
				f.setEndTime(rs.getString(6));
				f.setLocationend(rs.getString(7));
				f.setEndDate(rs.getString(8));
				f.setPrice(rs.getString(9));
				f.setStatus(rs.getString(10));
				
				list.add(f);
               
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
public List<Flight> getAeroplainLoc1ANDLoc2(String Locationstart,String Locationend) {
		
		List<Flight> list = new ArrayList<>();
		Flight f = null;

		try {
			String sql1 = "select * from FlightData where Locationstart=? and Locationend=? order by idFlight DESC";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setString(1, Locationstart);
			ps.setString(2, Locationend);
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				f = new Flight();
				f.setId(rs.getInt(1));
				f.setAeroplain(rs.getString(2));
				f.setStartTime(rs.getString(3));
				f.setLocationstart(rs.getString(4));
				f.setStartDate(rs.getString(5));
				f.setEndTime(rs.getString(6));
				f.setLocationend(rs.getString(7));
				f.setEndDate(rs.getString(8));
				f.setPrice(rs.getString(9));
				f.setStatus(rs.getString(10));
				
				list.add(f);
               
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	

	
	
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


