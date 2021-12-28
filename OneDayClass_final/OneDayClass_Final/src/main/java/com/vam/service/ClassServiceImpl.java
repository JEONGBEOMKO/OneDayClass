package com.vam.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vam.mapper.ClassMapper;
import com.vam.model.CateVO;
import com.vam.model.Criteria;
import com.vam.model.EclassVO;

@Service
public class ClassServiceImpl implements ClassService {
	
	@Autowired
	private ClassMapper classMapper;
	
	@Autowired
	SqlSessionTemplate temp; 
	
//	@Override
//	public void classEnroll(EclassVO eclass){
//		
//		classMapper.classEnroll(eclass);
//	}
	
	@Override
	public void classEnroll(EclassVO eclass){
//		classMapper.classEnroll(eclass);
		temp.insert("com.vam.mapper.ClassMapper.classEnroll", eclass);
	}
	
	
	/* 카테고리 리스트 */
	@Override
	public List<CateVO> cateList() {
		System.out.println("(service)cateList 출력 성공");
		
		return classMapper.cateList();
	}
	

}
