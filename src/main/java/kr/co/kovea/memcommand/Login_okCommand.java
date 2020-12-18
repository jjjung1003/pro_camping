package kr.co.kovea.memcommand;

import javax.servlet.http.HttpSession;

import kr.co.kovea.dao.MemberDao;
import kr.co.kovea.dto.MemberDto;

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
