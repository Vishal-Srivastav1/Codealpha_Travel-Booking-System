package com.entity;

public class Hotel {
        
	 //Train                                    
    private int id;                   
    private String price;                   
    private String  HotelN;
    private String  status;
    private String  Location;
    private String  Facility;
    private String  StartDate;
    private String  EndDate;
    private String  description;						
   
    
    
    
	public Hotel() {
		super();
		// TODO Auto-generated constructor stub
	}




	public Hotel(String price, String hoteln, String status, String location, String facility, String startDate,
			String endDate, String description) 
	{
		this.price = price;
		this.HotelN = hoteln;
		this.status = status;
		this.Location = location;
		this.Facility = facility;
		this.StartDate = startDate;
		this.EndDate = endDate;
		this.description = description;
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




	public String getHotelN() {
		return HotelN;
	}




	public void setHotelN(String hotelN) {
	    this.HotelN = hotelN;
	}




	public String getStatus() {
		return status;
	}




	public void setStatus(String status) {
		this.status = status;
	}




	public String getLocation() {
		return Location;
	}




	public void setLocation(String location) {
		this.Location = location;
	}




	public String getFacility() {
		return Facility;
	}




	public void setFacility(String facility) {
		this.Facility = facility;
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




	public String getDescription() {
		return description;
	}




	public void setDescription(String description) {
		this.description = description;
	}


  
}
