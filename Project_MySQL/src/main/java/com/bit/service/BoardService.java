package com.bit.service;

import java.util.List;

import com.bit.model.BoardVO;

public interface BoardService {

	/* 게시판 등록 */
	public void enroll(BoardVO board);
	
	/* 게시판 목록 */
	public List<BoardVO> getList();

}
