<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show User Page</title>
<style>
    body{
       font-family: 'Arvo', serif;
       background-color: darksalmon ;
       background-image: url('images/table.jpg');
       background-size: cover;
    }
</style>
<link href="https://fonts.googleapis.com/css2?family=Arvo&family=Cookie&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h1 style="text-align: center;font-size:45 px;color: yellowgreen;">All User are in Database Table: </h1>

<sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/registration" user="root" password="tiger" var="ds"></sql:setDataSource>
<sql:query dataSource="${ds}" var="rs">select * from user</sql:query>

<div class="container">
<table class="table text-light" >
    <tr class="bg-danger">
        <td align="center">User Id</td>
        <td align="center">User Name</td>
        <td align="center">User Email</td>
    </tr>
  <c:forEach var="row" items="${rs.rows}" >
    <tr class="bg-dark">
    <td align="center"><c:out value="${row.idUser}" /></td>
    <td align="center"><c:out value="${row.name}" /></td>
    <td align="center"><c:out value="${row.email}" /></td>
    </tr>  
</c:forEach>
</table> 


</div>  
 
</body>
</html>