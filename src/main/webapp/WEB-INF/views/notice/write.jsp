<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form method="post" action="write_ok" enctype="multipart/form-data">
    <input type="hidden" name="name" value="관리자">
	<table align="center" width="700">
	  <tr>
	    <td>Name</td>
	    <td>관리자</td>
	  </tr>
	  <tr>
	    <td>Title</td>
	    <td><input type="text" name="title" size="30"></td>
	  </tr>
	  <tr>  
	    <td>Content</td>
	    <td><textarea rows="20" cols="100" name="content"></textarea></td>
	  </tr>	 
	  <tr>  
	    <td>File</td>
	    <td><input type="file" name="fname"> <span style="color:red"> 파일 필수 선택 </td>
	  </tr>	 
	</table> <p>
	<div align="center"> <input type="submit" value="등록하기"> </div>
  </form>	
</body>
</html>