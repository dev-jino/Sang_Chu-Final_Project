package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Notice;

public interface NoticeMapper {
	int insertNotice(Notice notice);
	int deleteNotice(int idx);
	int selectNoticeCount();
	Notice selectNotice(int idx);
	List<Notice> selectNoticeList(Map<String, Object> map);
}
