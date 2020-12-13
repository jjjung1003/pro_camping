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
	a {
		text-decoration:none;
		color:black;
	}
</style>
</head>
<body>
  <div id="first">
	아이디 찾기 <hr><br>

  <form method="post" action="id_search_ok">
	<input type="text" name="name" id="name" placeholder="이름">
	<input type="text" name="phone" id="phone" placeholder="휴대폰번호">
	<input type="submit" value="아이디찾기">
  </form> <p>
 	 <c:if test="${chk == 1}">	<!-- chk라는 변수가 -->
      	<div id="msg" style="color:red"> 기재하신 정보로 확인되는 아이디가 없습니다. </div>
     </c:if>
      
     <c:if test="${chk == 0}">	<!-- chk라는 변수가 -->
      	<div id="msg" style="font-size:15px;"> <span style="color:blue; font-size:23px;">${name}</span>님의 아이디는 <span style="color:blue; font-size:25px;">${userid}</span>입니다. </div> <p>
      	<div id="msg" style="color:black"> <a href="login"> 로그인하기</a></div>
     </c:if>  
  </div>	
</body>
</html>