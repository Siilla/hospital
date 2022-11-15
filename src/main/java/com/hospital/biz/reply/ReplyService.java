package com.hospital.biz.reply;

import java.util.List;

public interface ReplyService {
     List<ReplyVO> selectAll(ReplyVO vo);
     void  insert(ReplyVO vo);
     void  delete(ReplyVO vo);
     
     ReplyVO selectOne(ReplyVO vo);
}
