package com.hospital.biz.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	NoticeDao dao;

	@Override
	public void insert(NoticeVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(NoticeVO vo) {
		dao.update(vo);
	}

	@Override
	public void delete(NoticeVO vo) {
		dao.delete(vo);
	}

	@Override
	public List<NoticeVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public NoticeVO selectOne(NoticeVO vo) {
		return dao.selectOne(vo);
	}

	@Override
	public void cnt(NoticeVO vo) {
		dao.cnt(vo);
	}
}