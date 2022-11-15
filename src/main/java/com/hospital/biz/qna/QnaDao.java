package com.hospital.biz.qna;

import java.util.List;

public interface QnaDao {
	void insert(QnaVO vo);
	void delete(QnaVO vo);
	void update(QnaVO vo);
	List<QnaVO> selectAll();
	List<QnaVO> selectId(QnaVO vo);
	QnaVO selectOne(QnaVO vo);
}
