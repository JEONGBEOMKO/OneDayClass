package com.vam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vam.mapper.CreatorMapper;
import com.vam.model.CreatorVO;

@Service
public class CreatorServiceImpl implements CreatorService {
	
	@Autowired
	CreatorMapper creatorMapper;
	
	@Override
	public void creatorEnroll(CreatorVO creator) throws Exception{
		
		creatorMapper.creatorEnroll(creator);
	}

}
