<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Function Page</title>
</head>
<body>
<h1>This is Function Page</h1>

 <c:set var="name" value="TECHSOFT INDIA"></c:set>
<h1>Given String is: <c:out value="${name}"></c:out></h1>
<h1>Length of name: <c:out value="${fn:length(name)}"></c:out></h1>
<h1>Converting to Lower Case: <c:out value="${fn:toLowerCase(name)}"></c:out></h1>
<h1>Is this String contains: <c:out value="${fn:contains(name,'INDIA')}"></c:out></h1>
</body>
</html>