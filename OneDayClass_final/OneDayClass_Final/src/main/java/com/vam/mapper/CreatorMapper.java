package com.vam.mapper;

import java.util.List;

import com.vam.model.CateVO;
import com.vam.model.CreatorVO;

public interface CreatorMapper {
	
	/* 클래스 등록 */
	public void creatorEnroll(CreatorVO creator);
	
	/* 카테고리 리스트 */
	public List<CateVO> cateList();
	

}
