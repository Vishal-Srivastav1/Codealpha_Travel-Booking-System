package com.entity;

public class Train {
        
	 //Train                                    
    private int id;                   
    private String  Trains;
    private String  status;
    private String  Locationstart;
    private String  Locationend;
    private String  Sleeper_SL;
    private String  AC_3_Tier_3A;
    private String  AC_2_Tier_2A;
    private String  StartDate;
    private String  EndDate;
    private String  StartTime;						
    private String  EndTime;
    
    
    
    
	public Train() {
		super();
		// TODO Auto-generated constructor stub
	}




	public Train(int id, String trains, String status, String locationstart, String locationend, String sleeper_SL,
			String aC_3_Tier_3A, String aC_2_Tier_2A, String startDate, String endDate, String startTime,
			String endTime) {
		
		this.id = id;
		this.Trains = trains;
		this.status = status;
		this.Locationstart = locationstart;
		this.Locationend = locationend;
		this.Sleeper_SL = sleeper_SL;
		this.AC_3_Tier_3A = aC_3_Tier_3A;
		this.AC_2_Tier_2A = aC_2_Tier_2A;
		this.StartDate = startDate;
		this.EndDate = endDate;
		this.StartTime = startTime;
		this.EndTime = endTime;
	}




	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public String getTrains() {
		return Trains;
	}




	public void setTrains(String trains) {
		this.Trains = trains;
	}




	public String getStatus() {
		return status;
	}




	public void setStatus(String status) {
		this.status = status;
	}




	public String getLocationstart() {
		return Locationstart;
	}




	public void setLocationstart(String locationstart) {
		this.Locationstart = locationstart;
	}




	public String getLocationend() {
		return Locationend;
	}




	public void setLocationend(String locationend) {
		this.Locationend = locationend;
	}




	public String getSleeper_SL() {
		return Sleeper_SL;
	}




	public void setSleeper_SL(String sleeper_SL) {
		this.Sleeper_SL = sleeper_SL;
	}




	public String getAC_3_Tier_3A() {
		return AC_3_Tier_3A;
	}




	public void setAC_3_Tier_3A(String aC_3_Tier_3A) {
		this.AC_3_Tier_3A = aC_3_Tier_3A;
	}




	public String getAC_2_Tier_2A() {
		return AC_2_Tier_2A;
	}




	public void setAC_2_Tier_2A(String aC_2_Tier_2A) {
		this.AC_2_Tier_2A = aC_2_Tier_2A;
	}




	public String getStartDate() {
		return StartDate;
	}




	public void setStartDate(String startDate) {
		this.StartDate = startDate;
	}




	public String getEndDate() {
		return EndDate;
	}




	public void setEndDate(String endDate) {
		this.EndDate = endDate;
	}




	public String getStartTime() {
		return StartTime;
	}




	public void setStartTime(String startTime) {
		this.StartTime = startTime;
	}




	public String getEndTime() {
		return EndTime;
	}


	public void setEndTime(String endTime) {
		this.EndTime = endTime;
	}
    
    
    
    
}
