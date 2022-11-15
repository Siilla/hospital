package com.hospital.biz.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaServiceImpl implements QnaService {
	
	@Autowired
	QnaDao dao;
	
	@Override
	public void insert(QnaVO vo) {
		dao.insert(vo);
	}

	@Override
	public void delete(QnaVO vo) {
		dao.delete(vo);
	}

	@Override
	public void update(QnaVO vo) {
		dao.update(vo);
	}

	@Override
	public List<QnaVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public List<QnaVO> selectId(QnaVO vo) {
		return dao.selectId(vo);
	}

	@Override
	public QnaVO selectOne(QnaVO vo) {
		return dao.selectOne(vo);
	}

}
