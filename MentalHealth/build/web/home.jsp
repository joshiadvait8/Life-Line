<%-- 
    Document   : home.jsp
    Created on : Oct 7, 2018, 5:38:24 PM
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
  <style>
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
    <br>
<center><h1>THIS MAY HELP YOU TO LIVE LIFE BETTER</h1></center>
<br>
  <div class="container">
    <div class="row">
      <div class="col-md-8" style="padding-bottom: 20px;">
        <sql:setDataSource var="timeTableDataSource"
                           driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/hnc?useSSL=FALSE" 
                           user="root" password="root" scope="page"/>
       
            <sql:query var="Day" dataSource="${timeTableDataSource}" scope="page">
            select * from image;
        </sql:query>
            
                <c:forEach var="row" items="${Day.rows}">
                    <div style="padding-bottom: 50px;" >     
                        <img heignt="600px" width="700px"src="<c:out value="${row.imagePath}"/>">
                    </div>
            </c:forEach>
            <%--<c:out value="${row.imagePath}"/>--%>
      
      </div>  
      <div class="col-md-3" >
      <sql:setDataSource var="timeTableDataSource"
                           driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/hnc?useSSL=FALSE" 
                           user="root" password="root" scope="page"/>
       
            <sql:query var="Day" dataSource="${timeTableDataSource}" scope="page">
            select * from helpline order by id;
        </sql:query>
            <h2>Organizations</h2><br>
                <c:forEach var="row" items="${Day.rows}">
                    <div style="height:50px;width:200px" >
                        
                        <a href="<c:out value="${row.link}"/>"><c:out value="${row.orgName}"/></a>
                    
                    </div>
            </c:forEach> 
           
      </div>
    </div>
  </div>
</body>
</html>