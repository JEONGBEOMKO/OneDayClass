package com.vam.service;

import java.util.List;

import com.vam.model.CateVO;
import com.vam.model.ClassVO;

public interface AdminService {
	
	/*  강좌 등록 */
	public void classEnroll(ClassVO oneclass);
	
	/* 카테고리 리스트 */
	public List<CateVO> cateList();

}
