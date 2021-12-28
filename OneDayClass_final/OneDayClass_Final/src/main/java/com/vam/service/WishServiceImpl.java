package com.vam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vam.mapper.WishMapper;
import com.vam.model.CartDTO;
import com.vam.model.WishDTO;

@Service
public class WishServiceImpl implements WishService {
	
	@Autowired
	private WishMapper wishMapper;
	
	@Override
	public int addWish(WishDTO wish) {
		// 장바구니 데이터 체크
		WishDTO checkWish = wishMapper.checkWish(wish);
		
		if(checkWish != null) {
			return 2;
		}
		
		// 장바구니 등록 & 에러 시 0반환
		try {
			return wishMapper.addWish(wish);
		} catch (Exception e) {
			return 0;
		}
	}
	
	@Override
	public List<WishDTO> getWishList(String memberId){
		List<WishDTO> wish = wishMapper.getWish(memberId);
		
		for(WishDTO dto : wish) {
			dto.initSaleTotal();
		}
		
		return wish;
	}
	
	
	@Override
	public int deleteWish(WishDTO wish) {

		return wishMapper.deleteWish(wish);
	}

}
