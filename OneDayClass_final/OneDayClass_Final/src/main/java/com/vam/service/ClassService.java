package com.vam.service;

import java.util.List;

import com.vam.model.CateVO;
import com.vam.model.Criteria;
import com.vam.model.EclassVO;

public interface ClassService {
	
	/* 클래스등록 */
	public void classEnroll(EclassVO eclass);

	public List<CateVO> cateList();


}
