package com.vam.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.vam.model.CreatorVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

/*CreatorService 의존성 주입*/



public class CreatorServiceTests {
	
	@Autowired
	private CreatorService service;
	
	@Test
	public void creatorEnrollTests() throws Exception{
		CreatorVO creator = new CreatorVO();
		
		creator.setMemberId("test");
		creator.setCreator_name("테스트");
		creator.setCreator_intro("테스트소개");
		
		service.creatorEnroll(creator);
	}

}
