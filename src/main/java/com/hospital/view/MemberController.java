package com.hospital.view;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hospital.biz.member.BCrypt;
import com.hospital.biz.member.MemberService;
import com.hospital.biz.member.MemberVO;

@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	@RequestMapping(value="/memberInsert.do")
	String memberInsert(MemberVO vo) {
		String BC = BCrypt.hashpw(vo.getPwd(), BCrypt.gensalt());
		vo.setBcrypt(BC);
		service.insert(vo);
		return "index.jsp";
	}
	
	@RequestMapping(value="/memberDelete.do")
	String memberDelete(MemberVO vo) {
		service.delete(vo);
		return "/memberList.do";
	}
	
	@RequestMapping(value="/memberList.do")
	String memberList(MemberVO vo, Model model) {
		model.addAttribute("li", service.selectAll());
		return "/member/list.jsp";
	}
	

	@RequestMapping(value="/memberEdit.do")
	String memberEdit(MemberVO vo, Model model) {
		model.addAttribute("m", service.selectOne(vo));
		return "/member/memberEdit.jsp";
	}
	
	@RequestMapping(value="/memberUpdate.do") 
	String memberUpdate(MemberVO vo) throws Exception {
		String BC = BCrypt.hashpw(vo.getPwd(), BCrypt.gensalt());
		vo.setBcrypt(BC);	
		service.update(vo);
		return "/member/myPage.jsp";
	}

	@RequestMapping(value="/idChcek.do")
	public void idChcek( MemberVO vo, HttpServletResponse  response )
    throws Exception {
		MemberVO m =service.selectOne(vo);
		int str ; 
		if (m==null) {
			str=0;
		}else {
			str=1;
		}		
		PrintWriter out = response.getWriter();
		out.println(str);		
	}
	
	@RequestMapping(value="/login.do")
	public String login( MemberVO vo, HttpSession session) throws Exception {
		
		MemberVO m = service.login(vo);
		
		if (m != null) {
			if (BCrypt.checkpw(vo.getPwd(), m.getBcrypt()))
			session.setAttribute("login", "T");
			session.setAttribute("name", m.getName());
			session.setAttribute("id", m.getId());
			String role = m.getRole();
			session.setAttribute("role", role );
			
			return "index.jsp";
		} else {
			session.setAttribute("login", null);
			return "index.jsp";
		}
	}
	
	@RequestMapping(value="/logout.do")
	public String logout( HttpSession session) {
		 session.invalidate();		 
		 return "index.jsp";
	}
}
