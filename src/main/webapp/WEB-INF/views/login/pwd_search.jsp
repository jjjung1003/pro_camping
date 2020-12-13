<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <form method="post" action="pwd_search_ok">
    패스워드 재설정 <hr><br>
    
    패스워드 재설정을 위해 메일이 발송됩니다.<br> 

        <div id="">
          <input type="text" name="userid" placeholder="아이디"> <p>
		  <input type="text" name="email" placeholder="이메일 주소"> 
		</div> <p>
        <div id="">
          <input type="submit" value="메일 받기">          
        </div> <p>
   </div>
    </form>
  </div>	
</body>
</html>