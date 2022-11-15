package com.hospital.biz.member;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String pwd;
    private String bcrypt ;	
	private String role;
	private String name;
	private String birth;
	private String tel;
	private String joindate;
	
}
