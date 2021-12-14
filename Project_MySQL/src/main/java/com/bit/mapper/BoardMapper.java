package com.bit.mapper;

import java.util.List;

import com.bit.model.BoardVO;

public interface BoardMapper {
	
	/* 게시판 등록 */
	public void enroll(BoardVO board);

	/* 게시판 목록 */
	public List<BoardVO> getList();
}
