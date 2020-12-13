package kr.co.kovea.membercommand;

import javax.servlet.http.HttpServletRequest;

import kr.co.kovea.Mail_Send;

public class Mail_SendCommand {

	public void email_send(HttpServletRequest request) throws Exception
	{
		Mail_Send ms=Mail_Send.getInstance();
		String email=request.getParameter("email");
		String encode_email="";
		for(int i=0; i<email.length(); i++)
		{
			encode_email=encode_email+(char)(email.charAt(i)+1);
		}
		String subject="[캠핑] 비밀번호 재설정 관련 메일입니다.";
		String body="비밀번호 변경 링크 : http://localhost/kovea/login/pwd_change?email="+encode_email;
		ms.setEmail(email, subject, body);
	}
}
