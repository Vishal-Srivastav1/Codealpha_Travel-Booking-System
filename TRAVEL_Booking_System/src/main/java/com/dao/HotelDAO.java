package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Hotel;

public class HotelDAO {
	private Connection conn;

	public HotelDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean HotelSchedule(Hotel h) {
		boolean f = false;
		try {
			String sql = "insert into HotelData(HotelN,Location,Facility,StartDate,EndDate,description,status,price)values(?,?,?,?,?,?,?,?)";
			
			
		  		
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, h.getHotelN());
			ps.setString(2, h.getLocation());
			ps.setString(3, h.getFacility());
			ps.setString(4, h.getStartDate());
			ps.setString(5, h.getEndDate());
			ps.setString(6, h.getDescription());
			ps.setString(7, h.getStatus());	
			ps.setString(8, h.getPrice());	
			
            
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

	


	
	public List<Hotel> getHotelLoc1ORLoc2(String HotelN,String Location) {
		
		List<Hotel> list = new ArrayList<>();
		Hotel h = null;
		
		try {
			String sql1 = "select * from HotelData where HotelN=? or Location=? order by idHotel DESC";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setString(1, HotelN);
			ps.setString(2, Location);
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				h = new Hotel();
				h.setId(rs.getInt(1));
				h.setHotelN(rs.getString(2));
				h.setLocation(rs.getString(3));
				h.setFacility(rs.getString(4));
				h.setStartDate(rs.getString(5));	
				h.setEndDate(rs.getString(6));
				h.setDescription(rs.getString(7));
				h.setStatus(rs.getString(8));
				h.setPrice(rs.getString(9));
				
				list.add(h);
			 
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
public List<Hotel> getHotelLoc1ANDLoc2(String HotelN,String Location) {
		
		List<Hotel> list = new ArrayList<>();
		Hotel h = null;

		try {
			String sql1 = "select * from HotelData where HotelN=? and Location=? order by idHotel DESC";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setString(1, HotelN);
			ps.setString(2, Location);
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				h = new Hotel();
				h.setId(rs.getInt(1));
				h.setHotelN(rs.getString(2));
				h.setLocation(rs.getString(3));
				h.setFacility(rs.getString(4));
				h.setStartDate(rs.getString(5));	
				h.setEndDate(rs.getString(6));
				h.setDescription(rs.getString(7));
				h.setStatus(rs.getString(8));
				h.setPrice(rs.getString(9));
				
				list.add(h);
               
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


