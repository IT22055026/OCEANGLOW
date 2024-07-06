<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--<link rel="stylesheet" href="home.css">
<link rel="stylesheet" href="footer.css"> -->
<script src="https://kit.fontawesome.com/a5ea36088f.js" crossorigin="anonymous"></script>
<style>
        body {
  font-family: 'Roboto', sans-serif;
  padding: 0px;
  margin: 0px;
}

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

/* Style the main picture container */
.mainpic-container {
  position: relative;
  background-color: #f9f9ff;
  box-shadow: 0px 3px 0px #ececec;
  top: 80px;
}

/* Style the main picture */
.mainpic {
  position: relative;
  top: 45px;
  width: 98%;
  height: 80;
  display: block;
  margin: 0 auto; /* Center the image horizontally */
  height: auto; /* Adjust the height as needed */
  margin: 0 auto; /* Center the image horizontally */
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2); /* Add a box shadow */
}

.overlay-text {
  position: absolute;
  top: 65%; /* Adjust the vertical positioning as needed */
  left: 50%; /* Adjust the horizontal positioning as needed */
  transform: translate(-48%, -50%); /* Center the text both vertically and horizontally */
  text-align: center;
  background-color: rgba(255, 255, 255, 0.15); /* Add a semi-transparent background to make text more readable */
  padding: 20px;
  max-width: 80%; /* Adjust the maximum width of the text box as needed */
  border-radius: 10px; /* Add rounded corners to the text box */
  
}

/* Style the overlay text content (your h1) */
.overlay-text h1 {
  font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
  font-size: 40px; /* Adjust the font size as needed */
  color: #181818; /* Text color */
  margin: 0;
  padding: 0;
}

.roomview {
  position: relative;
  top: 220px;
  left: -15%;
  text-align: center; /* Center the image horizontally */
  margin-top: 20px; /* Adjust this value to control the spacing between the mainpic and roomview */
}

.roomview img {
  width: auto; /* Allow the image to scale proportionally */
  height: 700px; /* Set the desired height for the portrait image */
  display: block;
  margin: 0 auto; /* Center the image horizontally */
}

.room-description {
  flex: 1; /* Allow the text to take up remaining space in the container */
  text-align: left; /* Align text to the left within the container */
  padding: 20px; /* Add padding around the text */
}

.head1 {
  position: absolute;
  top: 25%; /* Adjust the vertical positioning as needed */
  left: 75%;
  font-size: 22px; /* Adjust the font size as needed */
  color: #333; /* Text color */
}

.head2{
  position: absolute;
  top: 30%; /* Adjust the vertical positioning as needed */
  left: 75%;
  font-size: 38px; /* Adjust the font size as needed */
  color: #333; /* Text color */
}

.head3{
  position: absolute;
  top: 50%; /* Adjust the vertical positioning as needed */
  left: 75%;
  font-size: 38px; /* Adjust the font size as needed */
  color: #333; /* Text color */
}

.head4{
  position: absolute;
  top: 65%; /* Adjust the vertical positioning as needed */
  left: 75%;
  font-size: 25px; /* Adjust the font size as needed */
  color: #333; /* Text color */
}

.view-more-button {
  position: relative;
  top: 620px;
  left: 77%;
  display: block;
  margin-top: 20px; /* Adjust the spacing between the text and the button */
  background-color: #8488aa;
  color: #fff;
  border: none;
  padding: 10px 20px;
  font-size: 18px;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.view-more-button:hover {
  background-color: #5c63a5; /* Change the background color on hover */
}
body{
    margin: 0px;
}

footer {
    position: absolute;
    width: 100%;
    margin-top: 250px;
    padding: 0px;
    box-sizing: border-box;
    font-family: sans-serif;
    font-size: 15px;
    marg
}

footer a{
    text-decoration: none;
    color: inherit;
}

/specific styles/

.footer-outer-container{
    background-color: #010c80;
    color: white;
    padding: 40px;
    margin: 0px;
}

.footer-inner-container{
    display: flex;
    flex-wrap: wrap;
    
}

.footer-col{
    display: flex;
    width: auto;
    padding: 10px;
    align-items: center;
}

.footer-col-qlinks{
    
    width: 200px;
    height: 150px;
}

.footer-col-follow{
    
    width: 200px;
    height: 150px;
}

.footer-col-phone{
    display:flex;
    flex-direction: column;
    width: 200px;
    height: 115px;
}

.footer-col-address{
    display:flex;
    flex-direction: column;
    width: 200px;
    height: 115px;
}

.footer-col-email{
    display:flex;
    flex-direction: column;
    width: 200px;
    height: 115px;
}

.img{

    position:absolute;
    top: 70px;
    right: 50px;
    width: 250px;
    height:50px;
    
    
}


#text-icons{
    display: flex;
    align-items: top;
}

.footer-col i{
    margin: 10px 10px 10px 0px;
}


</style>
</head>
<body>
  <div class="fix">
    <section style="background: #ffffff; color: #000000;">
      <div class="logo-container">
        <img src="pictures\logo.png" alt="log" class="logo">
      </div>
    
      <nav class="stroke">
        <ul>
          <li><a href="home.jsp">Home</a></li>
          <li><a href="hotelGallery.jsp">Gallery</a></li>
          <li><a href="aboutus.jsp">About</a></li>
          <li><a href="contactus.jsp">Contact Us</a></li>
          <li><a href="login.jsp">Log In</a></li>
          <li><a href="signup.jsp">Sign Up</a></li>
          <li id="bn"><a href="Reservationpage.jsp">Book Now</a></li>
        </ul>
      </nav>
    </section>
  </div>
    
    <div class="mainpic-container">
      <img src="picture/4.jpg" alt="mainpic" class="mainpic">
      <div class="overlay-text">
        <h1>Where Dreams Meet Reality! Discover the Beauty of Our World.</h1>
      </div>
    </div>
    <div class="roomview">
        <div class="room-description">
                <h1 class="head1">Indulge in Luxury, Book Your Oasis Today.</h1>
                <h1 class="head2">Where Comfort Meets Hospitality!</h1>
                <h1 class="head3">Embark on Your Room Quest!</h1>
                <h1 class="head4">Find Your Perfect Sanctuary Amidst Luxury and Comfort.</h1>
             <button class="view-more-button">View More</button> 
              </div>
        <img src="picture/sea.jpeg" alt="roomview">
      </div>
  
    <footer>
      <div class="footer-outer-container">
              <div class="footer-inner-container">
                      <div class="footer-col">
                              <div class="footer-col-qlinks">
                                      <h4>Quick Links</h4>
                                      <ul>
                                      <li><a href="index.html">Home</a></li>
                                      <li><a href="aboutus.html">About Us</a></li>
                                      <li><a href="#">Feedbacks</a></li>
                                      <li><a href="#">FAQ</a></li>
                                      </ul>
                              </div>
                      </div>
                      <div class="footer-col">
                              <div class="footer-col-follow">
                                      <h4>Follow Us</h4>
                                      <a href="#"><i class="fab fa-facebook fa-lg"></i></a>
                                      <a href="#"><i class="fab fa-instagram fa-lg"></i></a>
                                      <a href="#"><i class="fab fa-twitter fa-lg"></i></a>
                              </div>
                      </div>
                      <div class="footer-col" id="text-icons">
                              <div class="footer-col-phone">
                                    <span>
                                      <i  class="fas fa-square-phone fa-lg"></i>
                                      <section><p>091-7617899<br>091-7617899</p></section>
                                    </span>
                              </div>
                      </div>
                      <div class="footer-col" id="text-icons">
                              <div class="footer-col-address">
                                      <span>
                                      <i class="fas fa-location-dot fa-lg"></i><br>
                                      <span>No.234,FlowerLane,<br>Galle Road,<br>Unawatuna, Sri Lanka</span>
                                      </span>
                              </div>
                      </div>
                      <div class="footer-col" id="text-icons">
                              <div class="footer-col-email">
                                      <span>
                                      <i class="fas fa-envelope fa-lg"></i>
                                      <span>oceanglow31@gmail.com</span></span>
                              </div>
                      </div>

                      <div class="img"><img src = "picture/logowhite2.png" class="img"></div>
                      
                     
              </div>
      </div>
</footer>

</body>
</html>
    