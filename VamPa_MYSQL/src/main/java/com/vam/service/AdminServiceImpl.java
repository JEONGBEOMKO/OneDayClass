package com.vam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vam.mapper.AdminMapper;
import com.vam.model.ClassVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminMapper adminMapper;
	
	/* 상품 등록 */
	@Override
	public void classEnroll(ClassVO oneclass) {
		
		System.out.println("(service)classEnroll.....");
		
		adminMapper.classEnroll(oneclass);
	}
	
}