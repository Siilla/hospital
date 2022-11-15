package com.hospital.biz.qna;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDaoImpl implements QnaDao {
	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public void insert(QnaVO vo) {
		mybatis.insert("qna.insert", vo);
	}

	@Override
	public void delete(QnaVO vo) {
		mybatis.delete("qna.delete", vo);
	}

	@Override
	public void update(QnaVO vo) {
		mybatis.update("qna.update", vo);		
	}

	@Override
	public List<QnaVO> selectAll() {
		return mybatis.selectList("qna.selectAll");
	}

	@Override
	public List<QnaVO> selectId(QnaVO vo) {
		return mybatis.selectList("qna.selectId",vo);
	}

	@Override
	public QnaVO selectOne(QnaVO vo) {
		return mybatis.selectOne("qna.selectOne", vo);
	}

}
