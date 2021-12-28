package com.vam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.vam.model.CateVO;
import com.vam.model.Criteria;
import com.vam.model.EclassVO;

public interface MainMapper {
	
	/* 카테고리 리스트 */
	public List<EclassVO> classList2(@Param("startRow") int startRow);
	public List<EclassVO> classList1(@Param("startRow") int startRow);
	
	public List<EclassVO> classList(Criteria cri);
	
	public int classTotal(Criteria cri);
	
	public String[] classIdList(String keyword);
	
	/* 강좌 정보 */
	public EclassVO classInfo(int class_id);
	
	public int update(int class_id);
	
	/* 상위 카테고리 */
	public CateVO classCate1(int cate_code);
	public CateVO classCate2(int cate_code);
	
	/* 카테고리 페이지 */
	public List<EclassVO> cateIntro(@Param("cate_code") int cate_code, @Param("startRow") int startRow, @Param("endRow") int endRow);
	public CateVO cateCate0(int cate_code);
	public CateVO cateCate1(int cate_code);
	public CateVO cateCate2(int cate_code);
	
	public int dbCountAll(@Param("cate_code") int cate_code);
	
	//public int cateGetTotal(Criteria cri);
	
	
	//public List<EclassVO> myClass(String memberId);
}
