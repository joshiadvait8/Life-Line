<%-- 
    Document   : content
    Created on : Oct 7, 2018, 3:19:59 PM
    Author     : Jethava
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ADD POST CONTENT</h1>
        <form method="post" action="Uploadcon">
            <div class="form-group">
  <label for="comment">Content:</label>
  <textarea class="form-control" rows="5" id="comment" name="con"></textarea>
  <br>
   <button type="submit">Upload</button>
    </div>  
        </form>
        <sql:setDataSource var="timeTableDataSource"
                           driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/hnc?useSSL=FALSE" 
                           user="root" password="root" scope="page"/>
       
            <sql:query var="Day" dataSource="${timeTableDataSource}" scope="page">
            select * from content;
        </sql:query>
                <c:forEach var="row" items="${Day.rows}">
                    <div>
           <c:out value="${row.content}"/>
                    </div>            
                    <br>
            </c:forEach>
            
      
    </body>
</html>
