package com.hospital.biz.reply;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {
  private  int  seq;
  private  int  idx;
  private  String reply;
  private  String replayer;
  private  Date  replyDate;
}
