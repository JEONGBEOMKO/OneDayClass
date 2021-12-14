package com.vam.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.vam.model.ClassVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class AdminMapperTests {
	@Autowired 
	private AdminMapper mapper;
	
	/* 강좌등록 */
	@Test
	public void classEnrollTest() throws Exception{
		ClassVO oneclass = new ClassVO();
		
		oneclass.setCate_code(2101);
		oneclass.setCreator_id(2);
		oneclass.setClass_name("노드JS");
		oneclass.setClass_price(10000);
		oneclass.setClass_info("강좌소개");
		oneclass.setClass_tag("new");
		oneclass.setClass_discount(0.2);
		
		
		
		mapper.classEnroll(oneclass);
		
	}

}
