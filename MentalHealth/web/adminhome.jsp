<%-- 
    Document   : adminhome
    Created on : Oct 7, 2018, 2:02:34 PM
    Author     : Jethava
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
    float: left;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
    width: 20%;
    height:100vh;
}

/* Style the buttons inside the tab */
.tab button {
    display: block;
    background-color: inherit;
    color: black;
    padding: 22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    float: left;
    padding: 20px 20px;
    width: 70%;
    border-left: none;
    height: 300px;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 10px;
    margin: 8px 0;
    border:none;
    cursor: pointer;
   
}

button:hover {
    opacity: 0.8;
}

</style>
</head>
<body>
<center><h1>ADMIN PORTAL</h1></center>
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'upload')" id="defaultOpen">UPLOAD POSTS</button>
  <button class="tablinks" onclick="openCity(event, 'org')">ADD ORGANIZATION</button>
  <button class="tablinks" onclick="openCity(event, 'consult')">ADD CONSULTANT</button>
</div>

<div id="upload" class="tabcontent" align="center">
  <h3>UPLOAD POST</h3>
  
      
      Select a file to upload: <br />
      <form action = "Uploadimg" method = "post"
         enctype = "multipart/form-data">
          <br>
         <input type = "file" name = "file" size = "50" />
         <br />
         <input type = "submit" value = "Upload File" />
      </form>
      Note: Belive us your image will be uploaded.
     
</div>


<div id="org" class="tabcontent">
    <center>
        <form method="post" action="orgdetail">
            <table cellspacing="10" cellpadding="10">
                <tr>      
                    <td><label for="uname"><b>Name of Organization</b></label></td>
      <td><input type="text" placeholder="Enter Username" name="uname" required></td>
      </tr><tr>
      <td><label for="psw"><b>City</b></label></td>
      <td><input type="text" placeholder="Enter City" name="city" required></td>
      </tr><tr>
       <td> <label for="psw"><b>Address</b></label></td>
      <td><input type="text" placeholder="Enter Address" name="add" required></td>
      </tr><tr>
      <td><label for="psw"><b>Helpline No</b></label></td>
      <td><input type="number" placeholder="Enter Helpline" name="help" required></td>
      </tr><tr>
      <td><label for="psw"><b>Contact No</b></label></td>
      <td><input type="number" placeholder="Enter Contact No" name="con" required><td>
      </tr><tr>
      <td><label for="psw"><b>Email address</b></label></td>
      <td><input type="email" placeholder="Enter Email Address" name="email" required><td>
      </tr><tr>
      <td><label for="psw"><b>Link</b></label></td>
      <td><input type="text" placeholder="Enter Link" name="link" required></td>
      </tr><tr>
      
      <td><button type="submit">ADD</button></td>
      </tr>
      </table>
      </form>
    </center> 
</div>

<div id="consult" class="tabcontent">
  <center>
        <form method="post" action="consult">
            <table cellspacing="10" cellpadding="10">
                <tr>      
                    <td><label for="uname"><b>Name</b></label></td>
      <td><input type="text" placeholder="Enter Username" name="uname" required></td>
      </tr><tr>
      <td><label for="psw"><b>Contact</b></label></td>
      <td><input type="number" placeholder="Enter Contact" name="cont" required></td>
      </tr>
      <tr>
      <td><button type="submit">ADD</button></td>
      </tr>
            </table>
        </form>
</div>
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
     
</body>
</html> 
