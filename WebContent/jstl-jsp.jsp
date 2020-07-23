<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="org.dxc.employee.model.Employee" %>
    <%@ page import="java.util.ArrayList"%>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee</title>
</head>
<%
 List<Employee> empdata=new ArrayList<Employee>();
 empdata.add(new Employee(12,"uday",50000,true));
 empdata.add(new Employee(13,"shiva",40000,true));
 empdata.add(new Employee(14,"yash",30000,false));
 empdata.add(new Employee(15,"tanmay",20000,false));
 empdata.add(new Employee(16,"museera",30000,true));
 pageContext.setAttribute("myemp",empdata);
%>
<body>
<table border=1> 
<tr>
<th>Employee id</th>
<th>Employee Name</th>
<th>Employee Salary</th>
<th>Bonus</th>
</tr>


<c:forEach var="newemp" items="${myemp}">
<tr>
<td>${newemp.id}</td>
<td>${newemp.name}</td>
<td>${newemp.salary}</td>

<td><c:if test="${newemp.bonus}">
   Bonus Available
   </c:if>
   <c:if test="${not newemp.bonus}">
   Bonus  not Available
   </c:if>
   </td>
   
   </tr>
 </c:forEach>
 </table>
 </body>
 </html>

