package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Train;

public class TrainDAO {
	private Connection conn;

	public TrainDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean TrainSchedule(Train t) {
		boolean f = false;
		try {
			String sql = "insert into TrainData(Trains,StartTime,Locationstart,StartDate,EndTime,Locationend,EndDate,Sleeper_SL,AC_3_Tier_3A,AC_2_Tier_2A,status)values(?,?,?,?,?,?,?,?,?,?,?)";
			
		  		
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, t.getTrains());
			ps.setString(2, t.getStartTime());
			ps.setString(3, t.getLocationstart());
			ps.setString(4, t.getStartDate());
			ps.setString(5, t.getEndTime());
			ps.setString(6, t.getLocationend());
			ps.setString(7, t.getEndDate());
			ps.setString(8, t.getSleeper_SL());
			ps.setString(9, t.getAC_3_Tier_3A());
			ps.setString(10, t.getAC_2_Tier_2A());
			ps.setString(11, t.getStatus());
            
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

	
	

	public List<Train> getTrainLoc1ORLoc2(String Locationstart,String Locationend) {
		
		List<Train> list = new ArrayList<>();
		Train t = null;

		try {
			String sql1 = "select * from traindata where Locationstart=? or Locationend=? order by idTrain DESC";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setString(1, Locationstart);
			ps.setString(2, Locationend);
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				t = new Train();
				t.setId(rs.getInt(1));
				t.setTrains(rs.getString(2));
				t.setStartTime(rs.getString(3));
				t.setLocationstart(rs.getString(4));
				t.setStartDate(rs.getString(5));
				t.setEndTime(rs.getString(6));
				t.setLocationend(rs.getString(7));
				t.setEndDate(rs.getString(8));
				t.setSleeper_SL(rs.getString(9));
				t.setAC_3_Tier_3A(rs.getString(10));
				t.setAC_2_Tier_2A(rs.getString(11));
				t.setStatus(rs.getString(12));
				
				list.add(t);
               
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
public List<Train> getTrainLoc1ANDLoc2(String Locationstart,String Locationend) {
		
		List<Train> list = new ArrayList<>();
		Train t = null;

		try {
			String sql1 = "select * from traindata where Locationstart=? and Locationend=? order by idTrain DESC";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setString(1, Locationstart);
			ps.setString(2, Locationend);
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				t = new Train();
				t.setId(rs.getInt(1));
				t.setTrains(rs.getString(2));
				t.setStartTime(rs.getString(3));
				t.setLocationstart(rs.getString(4));
				t.setStartDate(rs.getString(5));
				t.setEndTime(rs.getString(6));
				t.setLocationend(rs.getString(7));
				t.setEndDate(rs.getString(8));
				t.setSleeper_SL(rs.getString(9));
				t.setAC_3_Tier_3A(rs.getString(10));
				t.setAC_2_Tier_2A(rs.getString(11));
				t.setStatus(rs.getString(12));
				
				list.add(t);
               
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


