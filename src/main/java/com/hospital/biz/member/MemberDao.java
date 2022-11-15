package com.hospital.biz.member;

import java.util.List;

public interface MemberDao {
	
	void insert(MemberVO vo);
	void update(MemberVO vo);
	void delete(MemberVO vo);
	
	List<MemberVO> selectAll();
	MemberVO selectOne(MemberVO vo);

	MemberVO login(MemberVO vo);
}
