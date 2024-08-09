package com.entity;

public class ApplyUser {
	
	private int id;
	private int userid;
	private String username;
	private String email;
	private String state;
	private String dist;
	private String pdate;
	private String name;
	private String Locationstart; 
	private String Locationend; 
	private String StartTime; 
	private String EndTime; 
	private String StartDate; 
	private String EndDate; 
	private String facility; 
	private String description; 
	
	
	
	public ApplyUser() {
		super();
		// TODO Auto-generated constructor stub
	}



	
	public ApplyUser(int userid, String username, String email, String state, String dist, String name,
			String locationstart, String locationend, String startTime, String endTime, String startDate,
			String endDate,String pdate) 
	{
		this.userid = userid;
		this.username = username;
		this.email = email;
		this.state = state;
		this.dist = dist;
		this.name = name;
		this.Locationstart = locationstart;
		this.Locationend = locationend;
		this.StartTime = startTime;
		this.EndTime = endTime;
		this.StartDate = startDate;
		this.EndDate = endDate;
		this.pdate = pdate;
	}




	public ApplyUser(int userid, String username, String email, String state, String dist, String name,
			String locationstart, String startDate, String endDate, String facility, String description,String pdate) 
	{
		this.userid = userid;
		this.username = username;
		this.email = email;
		this.state = state;
		this.dist = dist;
		this.name = name;
		this.Locationstart = locationstart;
		this.StartDate = startDate;
		this.EndDate = endDate;
		this.facility = facility;
		this.description = description;
		this.pdate = pdate;
	}




	public int getId() {
		return id;
	}



	public String getFacility() {
		return facility;
	}




	public void setFacility(String facility) {
		this.facility = facility;
	}




	public String getDescription() {
		return description;
	}




	public void setDescription(String description) {
		this.description = description;
	}




	public void setId(int id) {
		this.id = id;
	}



	public int getUserid() {
		return userid;
	}



	public void setUserid(int userid) {
		this.userid = userid;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getState() {
		return state;
	}



	public void setState(String state) {
		this.state = state;
	}



	public String getDist() {
		return dist;
	}



	public void setDist(String dist) {
		this.dist = dist;
	}



	public String getPdate() {
		return pdate;
	}



	public void setPdate(String pdate) {
		this.pdate = pdate;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getLocationstart() {
		return Locationstart;
	}



	public void setLocationstart(String locationstart) {
		Locationstart = locationstart;
	}



	public String getLocationend() {
		return Locationend;
	}



	public void setLocationend(String locationend) {
		Locationend = locationend;
	}



	public String getStartTime() {
		return StartTime;
	}



	public void setStartTime(String startTime) {
		StartTime = startTime;
	}



	public String getEndTime() {
		return EndTime;
	}



	public void setEndTime(String endTime) {
		EndTime = endTime;
	}



	public String getStartDate() {
		return StartDate;
	}



	public void setStartDate(String startDate) {
		StartDate = startDate;
	}



	public String getEndDate() {
		return EndDate;
	}



	public void setEndDate(String endDate) {
		EndDate = endDate;
	}


	

	
}
