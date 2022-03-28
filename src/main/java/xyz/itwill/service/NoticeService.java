package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Notice;

public interface NoticeService {
	void addNotice(Notice notice);
	void removeNotice(int idx);
	int getNoticeCount();
	Notice getNotice(int idx);
	List<Notice> getNoticeList(Map<String, Object> map);
}
