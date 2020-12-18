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
	
	<div align="center">
	  <c:if test="${pstart != 1}"> <!-- 1, 11, 21, 31.... -->
	  	<a href="list?page=${pstart-1}">◁◁ </a>
	  </c:if>
	  <c:if test="${pstart == 1}"> 
	  	◁◁
	  </c:if>
	  
	  <c:if test="${page != 1}"> <!-- 1, 2, 3, 4.... -->
	  	<a href="list?page=${page-1}">◁ </a>
	  </c:if>
	  <c:if test="${page == 1}"> 
	  	◁
	  </c:if>
	  
	  <c:forEach var="i" begin="${pstart}" end="${pend}">	
	  	<c:if test="${page != i}">
	  		<a href="list?page=${i}"> ${i}</a>
	  	</c:if>
	  	<c:if test="${page == i}">
	  		<a href="list?page=${i}" style="color:red"> ${i}</a>
	  	</c:if>
	  </c:forEach>  
	  
	  <c:if test="${page != page_cnt}"> <!-- 1, 2, 3, 4.... -->
	  	<a href="list?page=${page+1}">▷ </a>
	  </c:if>
	  <c:if test="${page == page_cnt}"> 
	  	▷
	  </c:if>
	  
	  <c:if test="${pend != page_cnt}"> <!-- 1, 11, 21, 31.... -->
	  	<a href="list?page=${pend+1}">▷▷ </a>
	  </c:if>
	  <c:if test="${pend == page_cnt}"> 
	  	▷▷ 
	  </c:if>	  
	</div>
	
	<c:if test="${email == 'admin@jjj.com'}">	
		<div align="center"> <a href="write"> 글 쓰기 </a> </div>
	</c:if>
</body>
</html>















