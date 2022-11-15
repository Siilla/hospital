package com.hospital.biz.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insert(MemberVO vo) {
		System.out.println("insert(MemberVo vo) :" + vo);
		mybatis.insert("member.insert", vo);
	}

	@Override
	public void update(MemberVO vo) {
		System.out.println("update(MemberVo vo) :" + vo);
		mybatis.update("member.update",vo);
	}

	@Override
	public void delete(MemberVO vo) {
		mybatis.delete("mybatis.delete",vo);
	}
	
	@Override
	public List<MemberVO> selectAll() {
		return mybatis.selectList("member.selectAll");
	}

	@Override
	public MemberVO selectOne(MemberVO vo) {
		return mybatis.selectOne("member.selectOne", vo);
	}

	@Override
	public MemberVO login(MemberVO vo) {
		return mybatis.selectOne("member.login", vo);
	}

}
