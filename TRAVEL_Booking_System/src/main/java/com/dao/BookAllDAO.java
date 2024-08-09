package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.entity.ApplyUser;

public class BookAllDAO {
	private Connection conn;

	public BookAllDAO(Connection conn) {
		super();
		this.conn = conn;
	}

//          Booking Querys
	public boolean BookAll(ApplyUser a) {
		boolean f = false;
		try {
			String sql = "insert into BookAlldata (userid,username,email,state,dist,name,Locationstart,Locationend,StartTime,EndTime,StartDate,EndDate,pdate) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(sql);
			java.util.Date d2 = null;
			if (d2 == null)
				d2 = new java.util.Date();
			long ld = d2.getTime();
			java.sql.Date sqlDate = new java.sql.Date(ld);
			// System.out.println(sqlDate);
			// int userid =Integer.parseInt("userid");

			ps.setInt(1, a.getUserid());
			ps.setString(2, a.getUsername());
			ps.setString(3, a.getEmail());
			ps.setString(4, a.getState());
			ps.setString(5, a.getDist());
			ps.setString(6, a.getName());
			ps.setString(7, a.getLocationstart());
			ps.setString(8, a.getLocationend());
			ps.setString(9, a.getStartTime());
			ps.setString(10, a.getEndTime());
			ps.setString(11, a.getStartDate());
			ps.setString(12, a.getEndDate());
			ps.setDate(13, sqlDate);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

//Booking Querys
	public boolean BookAllH(ApplyUser a) {
		boolean f = false;
		try {
			String sql = "insert into BookAlldata (userid,username,email,state,dist,name,Locationstart,StartDate,EndDate,description,facility,pdate) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			                                      
			PreparedStatement ps = conn.prepareStatement(sql);
			java.util.Date d2 = null;
			if (d2 == null)
				d2 = new java.util.Date();
			long ld = d2.getTime();
			java.sql.Date sqlDate = new java.sql.Date(ld);
			// System.out.println(sqlDate);
			// int userid =Integer.parseInt("userid");

			ps.setInt(1, a.getUserid());
			ps.setString(2, a.getUsername());
			ps.setString(3, a.getEmail());
			ps.setString(4, a.getState());
			ps.setString(5, a.getDist());
			ps.setString(6, a.getName());
			ps.setString(7, a.getLocationstart());
			ps.setString(8, a.getStartDate());
			ps.setString(9, a.getEndDate());
			ps.setString(10, a.getDescription());
			ps.setString(11, a.getFacility());
			ps.setDate(12, sqlDate);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public List<ApplyUser> applygetUserformDetails(int id) {
		List<ApplyUser> list = new ArrayList<>();
		ApplyUser j = null;

		try {
			String sql2 = "select * from BookAlldata where userid=? order by id desc";
			PreparedStatement ps = conn.prepareStatement(sql2);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				j = new ApplyUser();
				j.setId(rs.getInt(1));
				j.setUserid(rs.getInt(2));
				j.setUsername(rs.getString(3));
				j.setEmail(rs.getString(4));
				j.setState(rs.getString(5));
				j.setDist(rs.getString(6));
				j.setName(rs.getString(7));
				j.setLocationstart(rs.getString(8));
				
				j.setLocationend(rs.getString(9));
				j.setStartTime(rs.getString(10));
				j.setEndTime(rs.getString(11));
				j.setStartDate(rs.getString(12));
				j.setEndDate(rs.getString(13));

				java.sql.Date d3 = rs.getDate(14);
				SimpleDateFormat ds1 = new SimpleDateFormat("dd-MM-yyyy");
				String st3 = ds1.format(d3);
				j.setPdate(st3);
				list.add(j);

			}

		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public boolean deleteform(int id) {
		boolean f = false;  
	
	try {
		String dql4=" delete from BookAlldata where id=?";
		PreparedStatement ps=conn.prepareStatement(dql4);
		ps.setInt(1, id);
		int i=ps.executeUpdate();
		
		if (i == 1) {
			f = true;
		}

		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return f;
	
	}

}
