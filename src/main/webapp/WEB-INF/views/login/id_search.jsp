<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#first {
		text-align:center;
	}
</style>
</head>
<body>
  <div id="first">
	아이디 찾기 <hr><br>

  <form method="post" action="id_sea_ok">
	<input type="text" name="name" placeholder="이름">
	<input type="text" name="phone" placeholder="휴대폰번호">
	<input type="submit" value="아이디찾기">
	
	<c:if test="${chk == 1}">	<!-- chk라는 변수가 -->
      <div id="msg" style="color:red"> 확인되는 아이디가 없습니다. </div>
    </c:if>
	
  </form>
  </div>	
</body>
</html>