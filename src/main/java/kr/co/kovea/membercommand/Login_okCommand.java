package kr.co.kovea.membercommand;

import javax.servlet.http.HttpSession;

import kr.co.kovea.memberdao.MemberDao;
import kr.co.kovea.memberdto.MemberDto;

public class Login_okCommand {

	public String login_ok(MemberDto mdto, HttpSession session, MemberDao mdao) {

		MemberDto mdto2=mdao.login_ok(mdto);
		
		String url=null;
		
		if(mdto2==null)
		{
			url="redirect:/login/login?chk=1";
		}
		else
		{
			session.setAttribute("userid", mdto2.getUserid());
			session.setAttribute("name", mdto2.getName());
			url="redirect:/main/index";
		}
		return url;
	}

}
