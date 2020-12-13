package kr.co.kovea;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kovea.membercommand.Login_okCommand;
import kr.co.kovea.membercommand.Mail_SendCommand;
import kr.co.kovea.memberdao.MemberDao;
import kr.co.kovea.memberdto.MemberDto;

@Controller
public class MemberController {

	@Autowired
	public SqlSession sqlSession;
	
	@RequestMapping("/main/index")
	public String index()
	{
		return "/main/index";
	}
	
	@RequestMapping("/member/mem_first")
	public String mem_first()
	{
		return "/member/mem_first";
	}
	
	@RequestMapping("/member/mem_second")
	public String mem_second(HttpServletRequest request,Model model)
	{
		model.addAttribute("cla1",request.getParameter("cla_fir"));
		model.addAttribute("cla2",request.getParameter("cla_sec"));
		model.addAttribute("cla3",request.getParameter("cla_thir"));
		model.addAttribute("cla4",request.getParameter("cla_four"));		
		return "/member/mem_second";
	}
	
	@RequestMapping("/userid_check")
	public void userid_check(PrintWriter out,HttpServletRequest request)
	{
		String userid=request.getParameter("userid");
		MemberDao mdao=sqlSession.getMapper(MemberDao.class);
		int result=mdao.userid_check(userid);
		out.print(result);
	}
	
	@RequestMapping("/member/mem_third")
	public String mem_third(MemberDto mdto)
	{
		MemberDao mdao=sqlSession.getMapper(MemberDao.class);
		mdao.mem_third(mdto);
		return "redirect:/login/login";
	}
	
	@RequestMapping("/login/login")
	public String login(HttpServletRequest request,Model model)
	{		
		model.addAttribute("chk", request.getParameter("chk"));
		return "/login/login";		
	}
	
	@RequestMapping("/login/login_ok")
	public String login_ok(MemberDto mdto,HttpSession session)
	{
		MemberDao mdao=sqlSession.getMapper(MemberDao.class);
		Login_okCommand loc=new Login_okCommand();
		String url=loc.login_ok(mdto,session,mdao);
		return url;
	}
	
	@RequestMapping("/login/logout")
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "redirect:/main/index";
	}

	@RequestMapping("/login/id_search")
	public String id_search()
	{
		return "/login/id_search";
	}
	 
	@RequestMapping("/login/id_search_ok")
	public String id_search_ok()
	{
		return "/login/id_search_ok";
	}
	
	@RequestMapping("/login/email_send")
	public String email_send()
	{
		return "/login/email_send";
	}
	
	@RequestMapping("/login/pwd_search")
	public String pwd_search()
	{
		return "/login/pwd_search";
	}
	
	@RequestMapping("/login/pwd_search_ok")
	public String pwd_search_ok(HttpServletRequest request) throws Exception
	{
		Mail_SendCommand msc=new Mail_SendCommand();
		msc.email_send(request);				
		return "redirect:/login/login";
	}
	
	@RequestMapping("/login/pwd_change")
	public String pwd_change()
	{
		return "/login/pwd_change";
	}
	
	@RequestMapping("/login/mypage")
	public String mypage(Model model,HttpSession session)
	{
		MemberDao mdao=sqlSession.getMapper(MemberDao.class);
		MemberDto mdto=mdao.mypage(session.getAttribute("userid").toString());		
		model.addAttribute("mdto", mdto);
		return "/login/mypage";
	}
	
	@RequestMapping("/login/mem_update")
	public String mem_update(HttpServletRequest request,Model model)
	{
		String id=request.getParameter("id");
		MemberDao mdao=sqlSession.getMapper(MemberDao.class);
		MemberDto mdto=mdao.mem_update(id);
		model.addAttribute("mdto", mdto);
		return "/login/mem_update";
	}
	
	@RequestMapping("login/mem_update_ok")
	public String mem_update_ok(MemberDto mdto)
	{
		MemberDao mdao=sqlSession.getMapper(MemberDao.class);
		mdao.mem_update_ok(mdto);
		return "redirect:/login/mypage";
	}
	
	@RequestMapping("login/mem_del")
	public String mem_del(HttpServletRequest request)
	{
		String id=request.getParameter("id");
		MemberDao mdao=sqlSession.getMapper(MemberDao.class);
		mdao.mem_del(id);
		return "login/mem_del";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
