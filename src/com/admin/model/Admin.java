package com.admin.model;

public class Admin {
	private String roomID;
	private String roomType;
	private String numOfRooms;
	private String price;
	private String numbOfGuest;	
	
	public String getRoomID() {
		return roomID;
	}
	public void setRoomID(String roomID) {
		this.roomID = roomID;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public String getNumOfRooms() {
		return numOfRooms;
	}
	public void setNumOfRooms(String numOfRooms) {
		this.numOfRooms = numOfRooms;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getNumbOfGuest() {
		return numbOfGuest;
	}
	public void setNumbOfGuest(String numbOfGuest) {
		this.numbOfGuest = numbOfGuest;
	}
}
