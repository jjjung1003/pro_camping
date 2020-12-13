<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	정보 수정 페이지
	<hr>
	<div id="base" align="center">
		<input type="hidden" name="id" value="${mdto.id}">
	  <table width="350" height="200">
	    <tr>
	      <td> 이름 </td>
	      <td> ${mdto.name} </td>
	    </tr>
	    <tr>
	      <td> 아이디 </td>
	      <td> ${mdto.userid} </td>
	    </tr>
	    <tr>
	      <td> 이메일 </td>
	      <td> <input type="text" name="email" placeholder="${mdto.email}"> </td>
	    </tr>
	    <tr>
	      <td> 생년월일 </td>
	      <td> <input type="text" name="email" placeholder="${mdto.birth}"> </td>
	    </tr>	    
	    <tr>
	      <td> 휴대폰번호 </td>
	      <td> <input type="text" name="email" placeholder="${mdto.phone}"></td>
	    </tr>
	    <tr>
	      <td colspan="2" align="center"> 
      		<a href="mem_update_ok"> 정보 수정 </a>      		
          </td>
        </tr>
	  </table>
	</div>
</body>
</html>