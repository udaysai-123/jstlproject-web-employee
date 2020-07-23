<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var="salary" scope="session" value="${50000*4}"/>
      my salary is 
      <b><c:out value="${salary}"/></b></br>
      Remove from the session then salary is
  <b>  <c:remove var="salary"/>
    <c:out value="salary"/></b></br>
   
   <b>Exception Handling</b>
   <c:catch var="CatchException">
    <%
    
    int a=5/0;
     %>
</c:catch>
<c:if test="${Exception!=null}">
        Exception is ${CatchException}
        </c:if>





</body>
</html>