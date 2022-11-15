package com.hospital.view;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hospital.biz.qna.QnaService;
import com.hospital.biz.qna.QnaVO;
import com.hospital.biz.reply.ReplyService;
import com.hospital.biz.reply.ReplyVO;

@Controller
public class QnaController {
	@Autowired
	QnaService service;
	@Autowired
	ReplyService replyService;
	
	@RequestMapping(value="/qnaInsert.do")
	String qnaInsert(QnaVO vo) {
		String contents = vo.getContents();
		contents = contents.replace("\r\n","<br>");
		vo.setContents(contents);
		service.insert(vo);
		return "/qnaListOne.do";
	}
	
	@RequestMapping(value="/qnaDelete.do")
	String qnaDelete(QnaVO vo) {
		service.delete(vo);
		return "/qnaListOne.do";
	}
	
	@RequestMapping(value="/qnaUpdate.do")
	String qnaUpdate(QnaVO vo) {
		String contents = vo.getContents();
		contents = contents.replace("\r\n","<br>");
		vo.setContents(contents);
		service.update(vo);
		return "/qnaListOne.do";
	}
	
	@RequestMapping(value="/qnaList.do")
	String qnaList(QnaVO vo, Model model) {
		model.addAttribute("li", service.selectAll());
		return "/qna/list.jsp";
	}
	
	@RequestMapping(value="/qnaListOne.do")
	String qnaListOne(QnaVO vo, Model model) {
		model.addAttribute("li", service.selectId(vo));
		return "/qna/listOne.jsp";
	}

	@RequestMapping(value="/qnaOne.do")
	String qnaOne(QnaVO vo, ReplyVO rvo, Model model) {
		model.addAttribute("m", service.selectOne(vo));
		model.addAttribute("li", replyService.selectAll(rvo));
		
		return "/qna/edit.jsp";
	}
	
	@RequestMapping(value="ReplyInsert.do",method=RequestMethod.GET)
	public void ReplyInsert( ReplyVO rvo , HttpServletResponse  response)
		throws Exception {	
		replyService.insert(rvo);
		PrintWriter out = response.getWriter();
		out.println("success");	
	}
	
	@RequestMapping(value="ReplyDelete.do",method=RequestMethod.GET)
	public void ReplyDelete( ReplyVO rvo , HttpServletResponse  response)
		throws Exception {	
		replyService.delete(rvo);
		PrintWriter out = response.getWriter();
		out.println("success");	
	}
	
	@RequestMapping(value="/qnaEdit.do")
	String qnaEdit(QnaVO vo, Model model) {
		model.addAttribute("m", service.selectOne(vo));
		return "/qna/update.jsp";
	}
	
}
