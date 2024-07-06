package com.admin.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.admin.model.Admin;
import com.admin.util.CommonConstants;
import com.admin.util.CommonUtil;
import com.admin.util.DBConnection;
import com.admin.util.QueryUtil;

public class AdminServiceImpl implements IAdminService{

	private static Connection connection;
	private static Statement stmt;
	private static PreparedStatement preparedStatement;
	
	static{
		createAdminTable();
	}
	
	public static void createAdminTable() {
		
		try {
			connection = DBConnection.getDBConnection();
			
			stmt = connection.createStatement();
			
			stmt.execute(QueryUtil.queryByID(CommonConstants.QUERY_ID_CREATE_ADMIN_TABLE));
			
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println("Create Table Excdeption: " + e.getMessage());
			
		}finally {
			try {
				
				if(connection != null) {
					connection.close();
				}
				if(stmt != null){
					stmt.close();
				}
				
			}catch(SQLException e) {
				System.out.println(e.getMessage());
			}
		}
		
	}
	
	@Override
	public void addAdmin(Admin admin) {
		
		
		String adminId = CommonUtil.generateAdminIds(getAdminById());
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement =  connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_INSERT_ADMIN));
			connection.setAutoCommit(false);	
			
			admin.setRoomID(adminId);
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, admin.getRoomID());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, admin.getRoomType());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, admin.getNumOfRooms());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, admin.getPrice());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, admin.getNumbOfGuest());
			
			preparedStatement.executeLargeUpdate();
			connection.commit();
					
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				
				if(connection != null) {
					connection.close();
				}
				if(preparedStatement != null){
					preparedStatement.close();
				}
				
			}catch(SQLException e) {
				System.out.println(e.getMessage());
			}
		}
	}

	@Override
	public ArrayList<Admin> getAdmin() {
		ArrayList<Admin> adminList = new ArrayList<Admin>();
		
		try {
			
			connection = DBConnection.getDBConnection();
			preparedStatement =  connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_ALL_Admin));
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				Admin ad = new Admin();
				
				ad.setRoomID(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				ad.setRoomType(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				ad.setNumOfRooms(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				ad.setPrice(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				ad.setNumbOfGuest(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				
				adminList.add(ad);
			}
			
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				
				if(connection != null) {
					connection.close();
				}
				if(preparedStatement != null){
					preparedStatement.close();
				}
				
			}catch(SQLException e) {
				System.out.println(e.getMessage());
			}
		}
		
		return adminList;
	}

	
	public ArrayList<Admin> getAdminById(String roomId) {
		ArrayList<Admin> adminList = new ArrayList<Admin>();
		
		try {
			
			connection = DBConnection.getDBConnection();
			preparedStatement =  connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_ADMIN_BY_ID));
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				Admin ad = new Admin(); 
				
				ad.setRoomID(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				ad.setRoomType(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				ad.setNumOfRooms(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				ad.setPrice(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				ad.setNumbOfGuest(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				
				adminList.add(ad);
			}
			
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				
				if(connection != null) {
					connection.close();
				}
				if(preparedStatement != null){
					preparedStatement.close();
				}
				
			}catch(SQLException e) {
				System.out.println(e.getMessage());
			}
		}
		
		return adminList;
	}


	@Override
	public void updateAdmin(String roomID, Admin admin) {
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement =  connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_UPDATE_ADMIN));
			connection.setAutoCommit(false);	
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, admin.getRoomType());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, admin.getNumOfRooms());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, admin.getPrice());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, admin.getNumbOfGuest());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, admin.getRoomID());
			
			preparedStatement.executeLargeUpdate();
			connection.commit();
					
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				
				if(connection != null) {
					connection.close();
				}
				if(preparedStatement != null){
					preparedStatement.close();
				}
				
			}catch(SQLException e) {
				System.out.println(e.getMessage());
			}
		}
		
	}

	@Override
	public void deleteAdmin(String roomID) {
		if(roomID != null && !roomID.isEmpty()) {
			
			try {
				connection = DBConnection.getDBConnection();
				
				preparedStatement =  connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_DELETE_ADMIN));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, roomID);
				
				preparedStatement.execute();
				
			}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
				System.out.println(e.getMessage());
			}finally {
				try {
					
					if(connection != null) {
						connection.close();
					}
					if(preparedStatement != null){
						preparedStatement.close();
					}
					
				}catch(SQLException e) {
					System.out.println(e.getMessage());
				}
			}
			
		}
		
	}
	
	public ArrayList<String> getAdminById(){  
		ArrayList<String> ids = new ArrayList<String>();
		
		try {
			connection = DBConnection.getDBConnection();
			
			preparedStatement =  connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_ADMIN_IDS));
			
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				ids.add(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
			}  
			
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				
				if(connection != null) {
					connection.close();
				}
				if(preparedStatement != null){
					preparedStatement.close();
				}
				
			}catch(SQLException e) {
				System.out.println(e.getMessage());
			}
		}
		
		return ids;
	}

}
