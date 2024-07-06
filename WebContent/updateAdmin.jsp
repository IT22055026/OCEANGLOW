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
<title>Insert title here</title>

<style type="text/css">

.logo {
    width: 250px; 
    height: 50px; 
    margin-right: 60px; 
    position: absolute;
    vertical-align: middle;
    top: 30px;
    left: 25px;
  }
  
  .fix {
    position: fixed;
    width: 100%;
    z-index: 100;
  }
  
  .logo-container {
    background-color: #f9f9ff;
    padding: 8px 0;
    box-shadow: 0px 3px 0px #ececec;
    display: flex;
    align-items: center;
    justify-content: space-between; /* To align logo to the left and navigation to the right */
  }
  
  .center {
    text-align: center;
  }
  
  section {
    background: #ffffff;
    color: #000000;
    padding-bottom: 10px; /* Adjust this value to control spacing */
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
    margin-right: 5px; /* Add some spacing between navigation links */
  }
  nav ul li a {
    display: block;
    padding: 5px;
    text-decoration: none;
    color: #000000;
    font-weight: 800;
    font-size: 17.5px;
    font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    text-transform: uppercase;
    margin: 8px 8px 8px 5px;
  }
  nav ul li a,
  nav ul li a:after,
  nav ul li a:before {
    position: relative;
    transition: all .5s;
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

body {
  font-family: 'Roboto', sans-serif;
  padding: 0px;
  margin: 0px;
}

/* Header styles */
.fix {
  position: fixed;
  width: 100%;
  z-index: 100;
}

.logo-container {
  background-color: #f9f9ff;
  padding: 8px 0;
  box-shadow: 0px 3px 0px #ececec;
  display: flex;
  align-items: center;
  justify-content: space-between;
}


nav.stroke ul li a,
nav.fill ul li a {
  position: relative;
}

nav ul {
  list-style: none;
  text-align: right;
}

nav ul li {
  display: inline-block;
  margin-right: 5px;
}

nav ul li a {
  display: block;
  padding: 5px;
  text-decoration: none;
  color: #000000;
  font-weight: 800;
  font-size: 17.5px;
  font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
  text-transform: uppercase;
  margin: 8px 8px 8px 5px;
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

</style>

</head>
<body>

	<section style="background: #ffffff; color: #000000;">
            <div class="logo-container">
                <img src="picture/logo.png" alt="log" class="logo">
            </div>
        
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
        </section>
	
	<h1>Update Student</h1>
	
	<%
	
	String roomID = (String) request.getAttribute("adminId");
	
	IAdminService idminService = new AdminServiceImpl();
	ArrayList<Admin> adminList = idminService.getAdminById(roomID);
	%>
	
	<%
		for(Admin admin: adminList){
	%>
		
		<form action="<%= request.getContextPath() %>/updateAdminServlet" method = "post">
			Room Id <input type="text" name="roomId"  value="<%= admin.getRoomID() %>" disable>
			Room Type <input type="text" name="roomType"  value="<%= admin.getRoomType() %>" >
			Number of rooms <input type="text" name="numOfRooms"  value="<%= admin.getNumOfRooms() %>" >
			Price <input type="text" name="price"  value="<%= admin.getPrice() %>" disable>
			Number of Guest <input type="text" name="numbOfGuest"  value="<%= admin.getNumbOfGuest() %>">
			
			<input type="submit" value="update">
		</form>
		
	<%
		}
	%>
</body>
</html>