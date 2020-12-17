<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="update_ok?id=${ndto.id}" enctype="multipart/form-data">
	<input type="hidden" name="name" value="${ndto.name}">
	<table>
	  <tr>
	    <td>Name</td>
	    <td>${ndto.name}</td>
	  </tr>
	  <tr>
	    <td>Title</td>
	    <td><input type="text" name="title" size="30" placeholder="${ndto.title}"></td>
	  </tr>
	  <tr>  
	    <td>Content</td>
	    <td><textarea rows="30" cols="100" name="content">${ndto.content}</textarea></td>
	  </tr>	 
	  <tr>  
	    <td>File</td>
	    <td><input type="file" name="fname"> <span style="color:red"> 파일 필수 선택 </span></td>
	  </tr>	 
	</table>
	<input type="submit" value="수정하기">
  </form>	
</body>
</html>