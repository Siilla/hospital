package com.hospital.biz.notice;

import java.util.List;

public interface NoticeDao {
	void insert(NoticeVO vo);
	void delete(NoticeVO vo);
	void update(NoticeVO vo);
	void cnt(NoticeVO vo);
	
	List<NoticeVO> selectAll();
	NoticeVO selectOne(NoticeVO vo);
}
