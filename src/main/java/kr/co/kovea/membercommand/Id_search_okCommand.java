package kr.co.kovea.membercommand;

import org.springframework.ui.Model;

import com.sun.mail.iap.Response;

import kr.co.kovea.memberdao.MemberDao;
import kr.co.kovea.memberdto.MemberDto;

public class Id_search_okCommand {

	public String id_search_ok(MemberDto mdto, Model model, MemberDao mdao) {
		
		MemberDto mdto2=mdao.id_search_ok(mdto);
		String url=null;
		
		if(mdto2==null)
		{
			url="redirect:/login/id_search?chk=1";
		}
		else
		{
			model.addAttribute("name", mdto2.getName());
			model.addAttribute("userid", mdto2.getUserid());
			url="redirect:/login/id_search?chk=0";
		}
		return url;
	}

}
