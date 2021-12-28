package com.vam.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.vam.model.EclassVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class ClassMapperTests {
	@Autowired 
	private ClassMapper mapper;
	
	/* 강좌등록 */
	
	@Test
	public void classEnrollTest() throws Exception{
		EclassVO oneclass = new EclassVO();
		
		oneclass.setCate_code("1302");
//		oneclass.setCreator_id(2);
		oneclass.setClass_name("마카롱마카롱");
		oneclass.setClass_name("초급자");
		oneclass.setClass_price(30000);
		oneclass.setClass_discount(0.1);
//		oneclass.setClass_info("강좌소개");
//		oneclass.setClass_tag("new");
		
		mapper.classEnroll(oneclass);
		
	}
	
	
//	/* 카테고리 리스트 */
//	@Test
//	public void cateListTest() throws Exception{
//		System.out.println("cateList()........"+ mapper.cateList());
//	}
//	
}
