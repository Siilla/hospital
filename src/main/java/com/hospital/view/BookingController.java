package com.hospital.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hospital.biz.booking.BMJoinVO;
import com.hospital.biz.booking.BookingService;
import com.hospital.biz.booking.BookingVO;

@Controller
public class BookingController {
	@Autowired
	BookingService service;
	
	@RequestMapping(value="/bookingInsert.do")
	String bookingInsert(BookingVO vo) {
		service.insert(vo);
		return "/bookingListOne.do";
	}
	
	@RequestMapping(value="/bookingDelete.do")
	String bookingDelete(BookingVO vo) {
		service.delete(vo);
		return "/bookingListOne.do";
	}
	
	@RequestMapping(value="/bookingUpdate.do")
	String bookingUpdate(BookingVO vo) {
		service.update(vo);
		return "/bookingListOne.do";
	}
	
	@RequestMapping(value="/bookingList.do")
	String bookingList(BMJoinVO vo, Model model) {
		model.addAttribute("li", service.selectAll());
		return "/booking/list.jsp";
	}
	
	@RequestMapping(value="/bookingListOne.do")
	String bookingListOne(BookingVO vo, Model model) {
		model.addAttribute("li", service.selectId(vo));
		return "/booking/listOne.jsp";
	}
	
	@RequestMapping(value="/bookingEdit.do")
	String bookingEdit(BookingVO vo, Model model) {
		model.addAttribute("m", service.selectOne(vo));
		return "/booking/update.jsp";
	}
	
}
