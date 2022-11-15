package com.hospital.biz.notice;

import lombok.Data;

@Data
public class NoticeVO {
	int seq;
	String title;
	String contents;
	String createdate;
	int cnt;
}