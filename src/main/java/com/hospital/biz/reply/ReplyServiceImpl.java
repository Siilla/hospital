package com.hospital.biz.reply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyServiceImpl implements ReplyService  {

	@Autowired
	private ReplyDao dao;
	
	@Override
	public List<ReplyVO> selectAll(ReplyVO vo) {
		return dao.selectAll(vo);
	}

	@Override
	public void insert(ReplyVO vo) {
		dao.insert(vo);
		
	}

	@Override
	public void delete(ReplyVO vo) {
		dao.delete(vo);
		
	}

	@Override
	public ReplyVO selectOne(ReplyVO vo) {
		return dao.selectOne(vo);
	}

}
