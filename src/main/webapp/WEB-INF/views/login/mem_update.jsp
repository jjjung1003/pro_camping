<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function check(tt) {  // tt=> document.폼
		
		// year,month,day를 이용하여  yyyy-mm-dd 로 만들기
		var y=document.getElementById("year").value;
		var m=document.getElementById("month").value;
		var d=document.getElementById("day").value;
		var birth=y+"-"+m+"-"+d;
		document.getElementById("birth").value=birth;
	}	
</script>
</head>
<body>
	정보 수정 페이지
	<hr>
	<div id="base" align="center">
	<form method="post" name="jjj" action="mem_update_ok?id=${mdto.id}" onsubmit="return check(this)">
		<input type="hidden" name="id" value="${mdto.id}">
	  <table width="450" height="200">
	    <tr>
	      <td> 이름 </td>
	      <td> ${mdto.name} <input type="hidden" name="name" value="${mdto.name}">  </td>
	    </tr>
	    <tr>
	      <td> 아이디 </td>
	      <td> ${userid} <input type="hidden" name="userid" value="${mdto.userid}"> </td>
	    </tr>
	    <tr>
	      <td> 이메일 </td>
	      <td> <input type="text" name="email" value="${mdto.email}"> </td>
	    </tr>
	    <tr>
	      <td> 생년월일 </td>
	      <td>
	        <select id="year" name="year" id="year" style="width:100px;">
	           <option> 생년 </option>
		         <c:forEach var="i" begin="0" end="${2020-1900}">
		         	<c:set var="year" value="${2020-i}" />
		         	<option value="${year}">${year}</option>
	             </c:forEach>
	         </select>
	         
	         <select id="month" name="month" id="month" style="width:100px;">
	           <option> 월 </option>
	             <c:forEach var="i" begin="1" end="${12}">
		         	<c:set var="month" value="${13-i}" />
		         	<option value="${month}">${month}</option>
	             </c:forEach>
	         </select>
	         
	         <select id="day" name="day" id="day" style="width:100px;">
	           <option> 일 </option>
	           	 <c:forEach var="i" begin="1" end="${31}">
		         	<c:set var="day" value="${32-i}" />
		         	<option value="${day}">${day}</option>
	             </c:forEach>
	         </select>
	         <input type="hidden" name="birth" id="birth" value="${birth}">
	       </td>  
	    </tr>	    
	    <tr>
	      <td> 휴대폰번호 </td>
	      <td> <input type="text" name="phone" value="${mdto.phone}"></td>
	    </tr>
	    <tr>
	      <td colspan="2" align="center"> 
      		<input type="submit" value="정보수정">      		
          </td>
        </tr>
	  </table>
	  </form>
	</div>
</body>
</html>