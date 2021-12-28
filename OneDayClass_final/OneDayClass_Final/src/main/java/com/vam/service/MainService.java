package com.vam.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.vam.model.CateVO;
import com.vam.model.Criteria;
import com.vam.model.EclassVO;

public interface MainService {
	
	/* 카테고리 리스트 */
	public List<EclassVO> classList2(int startRow);
	public List<EclassVO> classList1(int startRow);
	
	
	public List<EclassVO> classList(Criteria cri);
	
	public int classTotal(Criteria cri);
	
	/* 강좌 정보 */
	public EclassVO classInfo(int class_id);
	public int update(int class_id);
	
	/* 상위 카테고리 */
	public CateVO classCate1(int class_id);
	public CateVO classCate2(int class_id);
	
	public List<EclassVO> cateIntro(@Param("cate_code") int cate_code, int startRow, int endRow);
	public CateVO cateCate0(int cate_code);
	public CateVO cateCate1(int cate_code);
	public CateVO cateCate2(int cate_code);
	
	public int dbCountAll(int cate_code);
	
	//public int cateGetTotal(Criteria cri) throws Exception;
	
	//public List<EclassVO> myClass(String memberId);
}
