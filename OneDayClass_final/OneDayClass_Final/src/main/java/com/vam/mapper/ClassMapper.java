package com.vam.mapper;

import java.util.List;

import com.vam.model.CateVO;
import com.vam.model.Criteria;
import com.vam.model.EclassVO;

public interface ClassMapper {
	
	/* 클래스 등록 */
	public void classEnroll(EclassVO eclass);
	
	/* 카테고리 리스트 */
	public List<CateVO> cateList();
	

	

}
