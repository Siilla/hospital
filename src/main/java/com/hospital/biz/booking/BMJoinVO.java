package com.hospital.biz.booking;

import com.hospital.biz.booking.BMJoinVO;

import lombok.Data;

@Data
public class BMJoinVO {
	private String id;
	private String b_date;
	private String b_time;
	private String doc;

	private String pwd;
	private String role;
	private String name;
	private String birth;
	private String tel;
	private String joindate;
}
