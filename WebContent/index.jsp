<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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

 /*Admin dashboard styles */
.dashboard {
  position: relative;
  background-color: #fff;
  max-width: 600px;
  margin: 50px auto;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

h1 {
  text-align: center;
  color: #333;
}

/* styles.css */
.admin-dashboard {
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
  background: #f8f8f8;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

h1 {
  text-align: center;
}

form {
  display: flex;
  flex-direction: column;
}

label {
  margin-bottom: 5px;
}

input {
  margin-bottom: 10px;
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

input[type="submit"] {
  background: #007BFF;
  color: #fff;
  border: none;
  padding: 10px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background: #0056b3;
}

.view-all-rooms {
  position: relative;
  left: -230px;
  top: -10px;
  text-align: center;
  margin-top: 20px;
}

.view-all-rooms a {
  text-decoration: none;
  color: #007BFF; /* Link color */
  font-weight: bold;
}

.view-all-rooms a:hover {
  text-decoration: underline; /* Underline on hover */
  color: #0056b3; /* Hover color */
}

	
</style>
</head>
<body>
	<div class="fix">
        <section style="background: #ffffff; color: #000000;">
            <div class="logo-container">
                <img src="pictures/logo.png" alt="log" class="logo">
            </div>
        
            <nav class="stroke">
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="#">Gallery</a></li>
                    <li><a href="aboutus.jsp">About</a></li>
                    <li><a href="contactsus.jsp">Contact Us</a></li>
                    <li><a href="#">Log In</a></li>
                    <li><a href="#">Sign Up</a></li>
                    <li id="bn"><a href="#">Book Now</a></li>
                </ul>
            </nav>
        </section>

        <div class="admin-dashboard">
          <h1>Admin Dashboard</h1>
          <form action="<%= request.getContextPath() %>/AddAdminServlet" method="post">
              <!-- <label for="room_id">Room ID:</label>
              <input type="text" id="room_id" name="room_id" required>  -->
  
              <label for="room_type">Room Type:</label>
              <input type="text" id="room_type" name="room_type" required>
  
              <label for="num_rooms">Number of Rooms:</label>
              <input type="number" id="num_rooms" name="numb_of_room" required>
  
              <label for="price">Price:</label>
              <input type="number" id="price" name="price" required>
  
              <label for="num_guests">Number of Guests:</label>
              <input type="number" id="num_guests" name="numb_of_guest" required> 
  
              <input type="submit" value="Add Room">
          </form>
      </div>
  
        <div class="view-all-rooms">
          <a href="your_target_page.html" target="_blank">VIEW ALL ROOM TYPES</a>
      </div>
    </div>
</body>
</html>