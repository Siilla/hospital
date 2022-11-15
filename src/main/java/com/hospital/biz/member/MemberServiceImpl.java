package com.hospital.biz.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDao dao;

	@Override
	public void insert(MemberVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(MemberVO vo) {
		dao.update(vo);
	}
	
	@Override
	public void delete(MemberVO vo) {
		dao.delete(vo);
	}

	@Override
	public List<MemberVO> selectAll() {
		return dao.selectAll();
	}


	@Override
	public MemberVO selectOne(MemberVO vo) {
		return dao.selectOne(vo);
	}

	@Override
	public MemberVO login(MemberVO vo) {
		return dao.login(vo);
	}
}
