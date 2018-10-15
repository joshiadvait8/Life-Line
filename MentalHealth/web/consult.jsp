<%-- 
    Document   : consult
    Created on : Oct 7, 2018, 8:13:01 PM
    Author     : Jethava
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
  </script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
  </script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">


  <style type="text/css">
    .ht
    {
      height: 100%;
    }
    .row{overflow: hidden; }
    ul li 
      {
          font-size: 20px;
          font-weight: 30px;
      }
  </style>
</head>
<body>
  

  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand" href="#">Life Line</a>
      </div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="home.jsp">Home</a></li>
        <li><a href="warning.html">Warning Signs</a></li>
        <li><a href="helpline.jsp">Help Line</a></li>
        <li><a href="consult.jsp">Consult</a></li>
      </ul>
    </div>
  </nav>
  <div class="container">
  <center><h2>Helplines For You</h2></center>

  <table class="table table-striped">
    <thead>
      <tr>
          <th>Consultant Name</th>
          <th>Contact</th>
        <th>Call us</th>

      </tr>
    </thead>
    <sql:setDataSource var="timeTableDataSource"
                           driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/hnc?useSSL=FALSE" 
                           user="root" password="root" scope="page"/>
       
            <sql:query var="Day" dataSource="${timeTableDataSource}" scope="page">
            select * from consult;
        </sql:query>
            <tbody>
                <c:forEach var="row" items="${Day.rows}">
      <tr>
               
        <td><c:out value="${row.name}"/></td>
        <td><c:out value="${row.contact}"/></td>
        <td><a href="tel:"<c:out value="${row.contact}"/>"><i class="fas fa-phone fa-2x"></i></td>
        
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>

