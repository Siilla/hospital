package com.hospital.biz.reply;

import java.util.List;

public interface ReplyDao {
    List<ReplyVO> selectAll(ReplyVO vo);
    void  insert(ReplyVO vo);
    void  delete(ReplyVO vo);
    
    ReplyVO selectOne(ReplyVO vo);
}
