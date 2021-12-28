package com.vam.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vam.mapper.MainMapper;
import com.vam.model.CateVO;
import com.vam.model.Criteria;
import com.vam.model.EclassVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MainServiceImpl implements MainService {

	@Autowired
	private MainMapper mainMapper;
	
//	@Autowired
//	SqlSessionTemplate temp;

	/* 카테고리 리스트 */
	@Override
	public List<EclassVO> classList2(int startRow) {
		System.out.println("(service)classList........");

		return mainMapper.classList2(startRow);
	}

	@Override
	public List<EclassVO> classList1(int startRow) {
		System.out.println("(service)classList........");

		return mainMapper.classList1(startRow);
	}

	/* 상품 검색 */
	@Override
	public List<EclassVO> classList(Criteria cri) {
		String type = cri.getType();
		String[] typeArr = type.split("");
		String[] classArr = mainMapper.classIdList(cri.getKeyword());

		if (type.equals("A") || type.equals("AC") || type.equals("AT") || type.equals("ACT")) {
			if (classArr.length == 0) {
				return new ArrayList();
			}
		}

		for (String t : typeArr) {
			if (t.equals("A")) {
				cri.setClassArr(classArr);
			}
		}

		return mainMapper.classList(cri);
	}

	/* 사품 총 갯수 */
	@Override
	public int classTotal(Criteria cri) {

		return mainMapper.classTotal(cri);

	}

	/* 강좌 정보 */
	@Override
	public EclassVO classInfo(int class_id) {

		EclassVO classInfo = mainMapper.classInfo(class_id);

		return classInfo;
	}

	/* 상위 카테고리 */
	@Override
	public CateVO classCate1(int class_id) {

		CateVO classCate1 = mainMapper.classCate1(class_id);

		return classCate1;

	}

	/* 상위 카테고리 */
	@Override
	public CateVO classCate2(int class_id) {

		CateVO classCate2 = mainMapper.classCate2(class_id);

		return classCate2;

	}

	
	 
	@Override 
	public List<EclassVO> cateIntro(@Param("cate_code") int cate_code, int startRow, int endRow) {
		if(cate_code == 1000 || cate_code == 2000) {
			cate_code = cate_code / 1000;
		}else {
			cate_code = cate_code;
		}
		
		return mainMapper.cateIntro(cate_code, startRow, endRow);
	 
	}
	
	@Override 
	public CateVO cateCate0(int cate_code) {
		CateVO cateCate0 = mainMapper.cateCate0(cate_code);
		
		return cateCate0;
	}
	
	@Override 
	public CateVO cateCate1(int cate_code) {
		CateVO cateCate1 = mainMapper.cateCate1(cate_code);
		
		return cateCate1;
	}
	
	@Override 
	public CateVO cateCate2(int cate_code) {
		CateVO cateCate2 = mainMapper.cateCate2(cate_code);
		
		return cateCate2;
	}
	
	@Override
	public int dbCountAll(int cate_code) {
		if(cate_code == 1000 || cate_code == 2000) {
			cate_code = cate_code / 1000;
		}else {
			cate_code = cate_code;
		}
		
		int Gtotal = mainMapper.dbCountAll(cate_code);
		return Gtotal;
	}
	
	public int update(int class_id) {
		int hit2 = mainMapper.update(class_id);
		return hit2;
	};
	
//	@Override 
//	public List<EclassVO> myClass(String memberId) {
//
//		return mainMapper.myClass(memberId);
//	 
//	}
	
//	@Override
//	public int cateGetTotal(Criteria cri) throws Exception {
//
//		return mainMapper.cateGetTotal(cri);
//
//	}
	
	

}