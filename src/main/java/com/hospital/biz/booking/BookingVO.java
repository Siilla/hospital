package com.hospital.biz.booking;

import com.hospital.biz.booking.BookingVO;

import lombok.Data;

@Data
public class BookingVO {
	private int idx;
	private String id;
	private String b_date;
	private String b_time;
	private String doc;
}
