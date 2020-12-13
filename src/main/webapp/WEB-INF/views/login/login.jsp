<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#login {
		margin-top:100px;
	}
	#log_fir #loginbtn {
		margin-top:20px;
		width:280px;
		height:40px;
	}	
	#log_thir {
		margin-top:50px;
		width:600px;
		height:100px;
	}
	#log_thir li {
		list-style:none;
	}
	#log_thir #left {
		float:left;
	}
	#log_thir #right {
		float:right;
	}
</style>
</head>
<body>
  
  	로그인<br>
  	첫 캠핑이 선물한 뜻밖의 세상_코베아  	
  	<hr>
  <div id="login" align="center">
  	<div id="log_fir">
	<form method="post" action="login_ok">
	  <table>
	    <tr>
	      <td> 아이디 </td>
	      <td> <input type="text" name="userid" style="height:40px; width:200px;">
	    </tr>   
	    <tr>
	      <td> 비밀번호 </td>
	      <td> <input type="password" name="pwd" style="height:40px; width:200px;">
	    </tr>   
	  </table>
	  <div> <input type="submit" value="LOGIN" id="loginbtn"> </div> <p>
	  
	  <c:if test="${chk == 1}">	<!-- chk라는 변수가 -->
      	<div id="msg" style="color:red"> 아이디 혹은 비밀번호가 다릅니다. </div>
      </c:if>
	  
	</form>
	</div>
	
	<div id="log_sec">
	
	</div>
	
	<div id="log_thir">
	<ul id="left">
       <li>신규 회원가입 진행하시겠습니까?</li>
       <li><a href="../member/mem_first">회원가입</a></li>     
    </ul>
    <ul id="right">
       <li>아이디 또는 비밀번호를 잊으셨나요?</li>
       <li><a href="../login/id_search">아이디 찾기</a></li>
       <li><a href="../login/pwd_search">패스워드 재설정</a></li>
    </ul>
	</div>
  </div>		
</body>
</html>












