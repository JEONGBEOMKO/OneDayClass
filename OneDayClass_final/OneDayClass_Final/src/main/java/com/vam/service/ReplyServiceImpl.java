package com.vam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vam.mapper.ReplyMapper;
import com.vam.model.ReplyVO;


@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyMapper replyMapper;
	
	//댓글 조회
	@Override
	public List<ReplyVO> readReply(int class_id) throws Exception{
		return replyMapper.readReply(class_id);
	}
	
	//댓글 작성
	@Override
	public void writeReply(ReplyVO vo) throws Exception{
		replyMapper.writeReply(vo);
	}
	
	//댓글 수정
	@Override
	public void updateReply(ReplyVO vo) throws Exception{
		replyMapper.updateReply(vo);
	}
	
	//댓글 삭제
	@Override
	public void deleteReply(ReplyVO vo) throws Exception{
		replyMapper.deleteReply(vo);
	}
	

}
