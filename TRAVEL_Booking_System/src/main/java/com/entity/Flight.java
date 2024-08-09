package com.entity;

public class Flight {
        
	 //Train                                    
    private int id;                   
    private String price;                   
    private String  Aeroplain;
    private String  status;
    private String  Locationstart;
    private String  Locationend;
    private String  StartDate;
    private String  EndDate;
    private String  StartTime;						
    private String  EndTime;
    
    
    
    
	public Flight() {
		super();
		// TODO Auto-generated constructor stub
	}


	

	public Flight(String price, String aeroplain, String status, String locationstart, String locationend,
			String startDate, String endDate, String startTime, String endTime) 
	{
		
		this.price = price;
		this.Aeroplain = aeroplain;
		this.status = status;
		this.Locationstart = locationstart;
		this.Locationend = locationend;
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




	public String getPrice() {
		return price;
	}




	public void setPrice(String price) {
		this.price = price;
	}




	public String getAeroplain() {
		return Aeroplain;
	}




	public void setAeroplain(String aeroplain) {
		this.Aeroplain = aeroplain;
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
