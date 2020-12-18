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
	    <td width="150">Name</td>
	    <td> ${ndto.name} </td>
	  </tr>
	  <tr>
	    <td>Title</td>
	    <td>${ndto.title}</td>
	  </tr>
	  <tr>  
	    <td>Content</td>
	    <td>${ndto.content}</td>
	  </tr>	 
	  <tr>  
	    <td>File</td>
	    <td><img src="../notice/img/${ndto.fname}" width="100"></td>
	  </tr>	 
	</table>
	<div align="center"><input type="button" value="목록보기" onclick="location.href='list'"></div>
	<div align="center"><input type="button" value="수정하기" onclick="location.href='update?id=${ndto.id}'"></div>
	<div align="center"><input type="button" value="삭제하기" onclick="location.href='delete?id=${ndto.id}'"></div>
</body>
</html>