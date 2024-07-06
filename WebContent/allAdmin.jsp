<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "com.admin.model.Admin" %>
<%@ page import = "com.admin.service.IAdminService" %>
<%@ page import = "com.admin.service.AdminServiceImpl" %>
<%@ page import = "java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Room Information</title>
<style>
  body {
    font-family: 'Roboto', sans-serif;
    padding: 0;
    margin: 0;
  }

  .logo-container {
    background-color: #f9f9ff;
    padding: 8px 0;
    box-shadow: 0px 3px 0px #ececec;
    display: flex;
    justify-content: space-between;
  }

  .logo {
    width: 250px;
    height: 50px;
    margin-right: 60px;
    position: absolute;
    top: 30px;
    left: 25px;
  }

  .fix {
    position: fixed;
    width: 100%;
    z-index: 100;
  }

  nav {
    margin: left;
    background: #f9f9ff;
    padding: 8px 0;
    box-shadow: 0px 3px 0px #ececec;
  }

  nav ul {
    list-style: none;
    text-align: right;
  }

  nav ul li {
    display: inline-block;
    margin-right: 10px;
  }

  nav ul li a {
    display: block;
    padding: 5px;
    text-decoration: none;
    color: #000;
    font-weight: 800;
    font-size: 17.5px;
    text-transform: uppercase;
    font-family: 'Trebuchet MS', Arial, sans-serif;
  }

  nav ul li a,
  nav ul li a:after,
  nav ul li a:before {
    position: relative;
    transition: all 0.5s;
  }

  nav ul li a:hover {
    color: #555;
  }

  nav.stroke ul li a,
  nav.fill ul li a {
    position: relative;
  }

  nav.stroke ul li a:after,
  nav.fill ul li a:after {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
    width: 0%;
    content: '.';
    color: transparent;
    background: #333;
    height: 1px;
  }

  nav.stroke ul li a:hover:after {
    width: 100%;
  }

  nav.fill ul li a {
    transition: all 2s;
  }

  #bn {
    background-color: #3b49e6;
    border-radius: 7px;
  }


section {
  	position : relative;
    background: #fff;
    color: #000;
    padding: 10px;
  }

  h1 {
    text-align: center;
    margin: 20px 0;
  }

  table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #ddd;
}

</style>
</head>
<body>
  <section>
    <div class="logo-container">
      <img src="picture/logo.png" alt="log" class="logo">
      <nav class="stroke">
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">Gallery</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Contact Us</a></li>
          <li><a href="#">Log In</a></li>
          <li><a href="#">Sign Up</a></li>
          <li id="bn"><a href="#">Book Now</a></li>
        </ul>
      </nav>
    </div>
  </section>
  <div>
  
   <h1>All Room Types</h1>
    <table>
      <thead>
        <tr>
          <th>Room ID</th>
          <th>Room Type</th>
          <th>Number of Rooms</th>
          <th>Price</th>
          <th>Number of Guests</th>
          <th>Update</th>
          <th>Delete</th>
        </tr>
      </thead>
      <tbody>
        <%
          IAdminService iadminService = new AdminServiceImpl();
          ArrayList<Admin> adminList = iadminService.getAdmin();
        %>
        <%
          for (Admin admin : adminList) {
        %>
        <tr>
          <td><%= admin.getRoomID() %></td>
          <td><%= admin.getRoomType() %></td>
          <td><%= admin.getNumOfRooms() %></td>
          <td><%= admin.getPrice() %></td>
          <td><%= admin.getNumbOfGuest() %></td>
          <td>
            <form action="<%= request.getContextPath() %>/GetAdminServlet" method="post">
              <input type="hidden" name="roomID" value="<%= admin.getRoomID() %>">
              <input type="submit" value="Update">
            </form>
          </td>
          <td>
            <form action="<%= request.getContextPath() %>/DeleteAdminServlet" method="post">
              <input type="hidden" name="roomID" value="<%= admin.getRoomID() %>">
              <input type="submit" value="Delete">
            </form>
          </td>
        </tr>
        <%
          }
        %>
      </tbody>
    </table>
  
  </div>
</body>
</html>
