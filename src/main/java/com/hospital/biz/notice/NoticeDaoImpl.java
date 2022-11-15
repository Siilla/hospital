package com.hospital.biz.notice;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDaoImpl implements NoticeDao{
	@Autowired
	SqlSessionTemplate mybatis;

	@Override
	public void insert(NoticeVO vo) {
		mybatis.insert("notice.insert",vo);
	}

	@Override
	public void update(NoticeVO vo) {
		mybatis.update("notice.update", vo);
	}

	@Override
	public void delete(NoticeVO vo) {
		mybatis.delete("notice.delete", vo);
	}

	@Override
	public List<NoticeVO> selectAll() {
		return mybatis.selectList("notice.selectAll");
	}

	@Override
	public NoticeVO selectOne(NoticeVO vo) {
		return mybatis.selectOne("notice.selectOne", vo);
	}

	@Override
	public void cnt(NoticeVO vo) {
		mybatis.update("notice.cnt", vo);
	}
}