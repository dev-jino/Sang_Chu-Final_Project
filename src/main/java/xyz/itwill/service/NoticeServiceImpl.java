package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.NoticeDAO;
import xyz.itwill.dto.Notice;



@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeDAO noticeDAO;

	@Override
	public void addNotice(Notice notice) {
		noticeDAO.insertNotice(notice);
	}

	@Override
	public void removeNotice(int idx) {
		noticeDAO.deleteNotice(idx);
	}

	@Override
	public int getNoticeCount() {
		return noticeDAO.selectNoticeCount();
	}

	@Override
	public Notice getNotice(int idx) {
		return noticeDAO.selectNotice(idx);
	}

	@Override
	public List<Notice> getNoticeList(Map<String, Object> map) {
		return noticeDAO.selectNoticeList(map);
	}
	
	
	
}
