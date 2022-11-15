package com.hospital.biz.reply;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDaoImpl implements ReplyDao {

	@Autowired
	private  SqlSessionTemplate  mybatis;
	
	@Override
	public List<ReplyVO> selectAll(ReplyVO vo) {		
		return mybatis.selectList("reply.replyList", vo);
	}

	@Override
	public void insert(ReplyVO vo) {
		mybatis.insert("reply.replyInsert", vo);
		
	}

	@Override
	public void delete(ReplyVO vo) {
		mybatis.delete("reply.replyDelete", vo);
		
	}

	@Override
	public ReplyVO selectOne(ReplyVO vo) {
		return mybatis.selectOne("reply.replyOne", vo);
	}

}
