package kr.co.kovea;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.kovea.dao.NoticeDao;
import kr.co.kovea.dto.NoticeDto;

@Controller 
public class NoticeController {

	@Autowired
	public SqlSession sqlSession;
	
	@RequestMapping("/notice/write")
	public String write()
	{
		return "/notice/write";
	}
	
	@RequestMapping("/notice/write_ok")
	public String write_ok(NoticeDto ndto,HttpServletRequest request) throws IOException
	{
		NoticeDao ndao=sqlSession.getMapper(NoticeDao.class);
		
		String path="C:\\shop\\pro_camping\\src\\main\\webapp\\WEB-INF\\views\\notice\\img";
		int max=1024*1024*20;
		MultipartRequest multi=new MultipartRequest(request,path,max,"utf-8",new DefaultFileRenamePolicy());
		
		ndto.setName(multi.getParameter("name"));
		ndto.setTitle(multi.getParameter("title"));
		ndto.setContent(multi.getParameter("content"));
		ndto.setFname(multi.getFilesystemName("fname"));
		File file=multi.getFile("fname");
		ndto.setFsize(file.length());
		
		ndao.write_ok(ndto);
		return "redirect:/notice/list";
	}
	
	@RequestMapping("/notice/list")
	public String list(Model model)
	{
		NoticeDao ndao=sqlSession.getMapper(NoticeDao.class);		
		ArrayList<NoticeDto> list=ndao.list();
		model.addAttribute("list", list);
		return "/notice/list";
	}
	
	@RequestMapping("/notice/hit")
	public String hit(HttpServletRequest request)
	{
		String id=request.getParameter("id");
		NoticeDao ndao=sqlSession.getMapper(NoticeDao.class);		
		ndao.hit(id);
		return "redirect:/notice/content?id="+id;
	}
	
	@RequestMapping("/notice/content")
	public String content(HttpServletRequest request, Model model)
	{
		String id=request.getParameter("id");
		NoticeDao ndao=sqlSession.getMapper(NoticeDao.class);
		NoticeDto ndto=ndao.content(id);
		model.addAttribute("ndto", ndto);
		return "/notice/content";
	}
	
	@RequestMapping("/notice/update")
	public String update(HttpServletRequest request, Model model)
	{
		String id=request.getParameter("id");
		NoticeDao ndao=sqlSession.getMapper(NoticeDao.class);
		NoticeDto ndto=ndao.update(id);
		model.addAttribute("ndto", ndto);
		return "/notice/update";
	}
	
	@RequestMapping("/notice/update_ok")
	public String update_ok(NoticeDto ndto,HttpServletRequest request) throws IOException
	{
		String id=request.getParameter("id");
		NoticeDao ndao=sqlSession.getMapper(NoticeDao.class);
		
		String path="C:\\shop\\pro_camping\\src\\main\\webapp\\WEB-INF\\views\\notice\\img";
		int max=1024*1024*20;
		MultipartRequest multi=new MultipartRequest(request,path,max,"utf-8",new DefaultFileRenamePolicy());
		
		ndto.setName(multi.getParameter("name"));
		ndto.setTitle(multi.getParameter("title"));
		ndto.setContent(multi.getParameter("content"));
		ndto.setFname(multi.getFilesystemName("fname"));
		File file=multi.getFile("fname");
		ndto.setFsize(file.length());
		
		ndao.update_ok(ndto);
		return "redirect:/notice/content?id="+id;
	}
	
	@RequestMapping("/notice/delete")
	public String delete(HttpServletRequest request)
	{
		String id=request.getParameter("id");
		NoticeDao ndao=sqlSession.getMapper(NoticeDao.class);
		ndao.delete(id);
		return "redirect:/notice/list";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
