<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	hr {
		border:1px solid #B40404;
		width:850px;
		align:center;
		background-color:#B40404;
		margin-bottom:50px;
	}
	
	#notice_update {
		margin-top:50px;
		margin-bottom:150px;
	}
</style>
</head>
<body>
<div align="center"> <h2> 공지사항 수정</h2> </div>
	<hr>
	<div id="notice_update">
	<form method="post" action="update_ok?id=${ndto.id}" enctype="multipart/form-data">
	<input type="hidden" name="name" value="${ndto.name}">
	<table align="center" width="700">
	  <tr>
	    <td width="200">Name</td>
	    <td>${ndto.name}</td>
	  </tr>
<%-- 	  <tr>  
	    <td>비밀번호</td>
	    <td><input type="password" name="pwd">
		    <c:if test="${chk != null}">
				<span id="jjj" style="color:red"> 비밀번호가 일치하지 않습니다.</span>
			</c:if>
	    </td>
	  </tr>	 --%>
	  <tr>
	    <td>Title</td>
	    <td><input type="text" name="title" size="30" placeholder="${ndto.title}"></td>
	  </tr>
	  <tr>  
	    <td>Content</td>
	    <td><textarea rows="20" cols="100" name="content">${ndto.content}</textarea></td>
	  </tr>	 
	  <tr>  
	    <td>File</td>
	    <td><input type="file" name="fname"> <span style="color:red"> 파일 필수 선택 </span></td>
	  </tr>	 
	</table> <p><br>
	<div align="center"><input type="submit" value="수정하기"></div>	
  </form>	
  </div>
</body>
</html>