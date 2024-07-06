package com.admin.service;

import java.util.ArrayList;

import com.admin.model.Admin;

public interface IAdminService {

	public void addAdmin(Admin admin);
	
	public ArrayList<Admin> getAdmin();
	
	public ArrayList<Admin> getAdminById(String roomId);
	
	public void updateAdmin(String roomID, Admin admin);
	
	public void deleteAdmin(String roomID);
}