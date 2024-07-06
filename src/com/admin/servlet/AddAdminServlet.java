package com.admin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.model.Admin;
import com.admin.service.AdminServiceImpl;
import com.admin.service.IAdminService;

/**
 * Servlet implementation class AddAdminServlet
 */
@WebServlet("/AddAdminServlet")
public class AddAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		Admin admin = new Admin();
		
		admin.setRoomType(request.getParameter("room_type"));
		admin.setNumOfRooms(request.getParameter("numb_of_room"));
		admin.setPrice(request.getParameter("price"));
		admin.setNumbOfGuest(request.getParameter("numb_of_guest"));
		
		IAdminService isadminService = new AdminServiceImpl();
		isadminService.addAdmin(admin);
		
		request.setAttribute("admin", admin);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/allAdmin.jsp");
		dispatcher.forward(request, response);
	} 

}
