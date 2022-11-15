package com.hospital.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hospital.biz.notice.NoticeService;
import com.hospital.biz.notice.NoticeVO;

@Controller
public class NoticeController {
	
	
	@Autowired
	NoticeService service;
	
	@RequestMapping(value="/noticeInsert.do")
	String noticeInsert(NoticeVO vo) {
		service.insert(vo);
		return "noticeList.do";
	}
	
	@RequestMapping(value="/noticeUpdate.do")
	String noticeUpdate(NoticeVO vo) {
		service.update(vo);
		return "/noticeOne.do";
	}
	
	@RequestMapping(value="/noticeDelete.do")
	String noticeDelete(NoticeVO vo) {
		service.delete(vo);
		return "/noticeList.do";
	}

	@RequestMapping(value="/noticeList.do")
	String noticeList(NoticeVO vo, Model model) {
		model.addAttribute("li", service.selectAll());
		return "/notice/list.jsp";
	}
	
	@RequestMapping(value="/noticeOne.do")
	String noticeOne(NoticeVO vo, Model model) {
		service.cnt(vo);
		model.addAttribute("m", service.selectOne(vo));
		return "/notice/edit.jsp";
	}

	@RequestMapping(value="/noticeEdit.do")
	String noticeEdit(NoticeVO vo, Model model) {
		model.addAttribute("m", service.selectOne(vo));
		return "/notice/update.jsp";
	}
	
}
