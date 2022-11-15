package com.hospital.biz.booking;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookingDaoImpl implements BookingDao {
	@Autowired
	SqlSessionTemplate mybatis;

	@Override
	public void insert(BookingVO vo) {
		mybatis.insert("booking.insert",vo);
	}

	@Override
	public List<BookingVO> selectAll() {
		return mybatis.selectList("booking.selectAll");
	}
	
	@Override
	public void delete(BookingVO vo) {
		mybatis.delete("booking.delete",vo);
	}
	
	@Override
	public void update(BookingVO vo) {
		mybatis.update("booking.update", vo);
	}

	@Override
	public List<BookingVO> selectId(BookingVO vo) {
		return mybatis.selectList("booking.selectId",vo);
	}

	@Override
	public BookingVO selectOne(BookingVO vo) {
		return mybatis.selectOne("booking.selectOne",vo);
	}
	
	
}
