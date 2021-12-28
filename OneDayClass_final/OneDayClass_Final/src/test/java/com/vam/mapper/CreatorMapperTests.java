package com.vam.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.vam.model.CreatorVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class CreatorMapperTests {
	
	@Autowired
	private CreatorMapper mapper;
	
	/* 크리에이터 등록 테스트 */
	@Test
	public void creatorEnroll() throws Exception{
		CreatorVO creator = new CreatorVO();
		
		creator.setMemberId("test");
		creator.setCreator_name("핏더사이즈");
		creator.setCreator_intro("안녕하세요");
		
		mapper.creatorEnroll(creator);
	}

}
