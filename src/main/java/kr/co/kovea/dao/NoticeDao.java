package kr.co.kovea.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.co.kovea.dto.NoticeDto;

public interface NoticeDao {

	public void write_ok(NoticeDto ndto);

	public ArrayList<NoticeDto> list();

	public NoticeDto content(String id);

	public void hit(String id);

	public NoticeDto update(String id);

	public void update_ok(NoticeDto ndto);

	public void delete(String id);

}
