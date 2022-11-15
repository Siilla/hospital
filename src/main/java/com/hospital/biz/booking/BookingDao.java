package com.hospital.biz.booking;

import java.util.List;

import com.hospital.biz.member.MemberVO;

public interface BookingDao {
	void insert(BookingVO vo);
	void delete(BookingVO vo);
	void update(BookingVO vo);
	List<BookingVO> selectAll();
	List<BookingVO> selectId(BookingVO vo);
	BookingVO selectOne(BookingVO vo);
}
