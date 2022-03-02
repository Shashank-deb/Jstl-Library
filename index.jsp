<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jstl Examples</title>
</head>
<body>

<h1>This is index.jsp</h1>

<c:set var="i" value="-230" scope="application"></c:set>
<h1><c:out value="${i}"></c:out></h1>
<h1><c:out value="${i}">This is default value</c:out></h1>
<hr>
<c:if test="${i==23}">
     <h1>My variable value is: <c:out value="${i}"></c:out><h1>  
</c:if>

<c:choose>
    <c:when test="${i>0}">
        <h1>Number is positive</h1>
        <h1>Number is greater than zero</h1>
    </c:when>
    <c:when test="${i<0}">
        <h1>Number is negative</h1>
        <h1>Number is smaller than zero</h1>
    </c:when>
    <c:otherwise>
        <h1>This is default value......</h1>
        <h1>This is default section</h1>
    </c:otherwise>
</c:choose>

<c:forEach var="j" begin="1" end="10">
    <h1>Value of j is: <c:out value="${j}"></c:out></h1>
</c:forEach>

<hr>

<c:url var="myurl" value="https://www.google.com/search">
    <c:param name="q" value="learn code with durgesh"></c:param>
</c:url>

<h1><c:out value="${myurl}"></c:out></h1>
<c:redirect url="${myurl}"></c:redirect>


</body>
</html>