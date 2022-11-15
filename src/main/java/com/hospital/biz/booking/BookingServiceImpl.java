package com.hospital.biz.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookingServiceImpl implements BookingService {
	@Autowired
	BookingDao dao;

	@Override
	public void insert(BookingVO vo) {
		dao.insert(vo);
	}

	@Override
	public void delete(BookingVO vo) {
		dao.delete(vo);
	}
	
	@Override
	public void update(BookingVO vo) {
		dao.update(vo);
	}

	@Override
	public List<BookingVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public List<BookingVO> selectId(BookingVO vo) {
		return dao.selectId(vo);
	}

	@Override
	public BookingVO selectOne(BookingVO vo) {
		return dao.selectOne(vo);
	}


}
