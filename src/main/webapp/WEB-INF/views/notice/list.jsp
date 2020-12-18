<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<table align="center" width="700">
	  <tr>
	    <td>No.</td>
	    <td width="300">Content</td>
	    <td>Name</td>
	    <td>Date</td>
	    <td>Hits</td>
	  </tr>
	  <c:forEach items="${list}" var="ndto">
	  <tr>
	    <td>${ndto.id}</td>
	    <td><a href="hit?id=${ndto.id}"> ${ndto.title} </a></td>
	    <td>${ndto.name}</td>
	    <td>${ndto.writeday}</td>
	    <td>${ndto.hit}</td>
	  </tr> 
	  </c:forEach> 	   
	</table> <p>
	<div align="center"> <a href="write"> 글 쓰기 </a> </div>
</body>
</html>