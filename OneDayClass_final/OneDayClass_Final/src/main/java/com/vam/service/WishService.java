package com.vam.service;

import java.util.List;


import com.vam.model.WishDTO;

public interface WishService {

	
	/* 위시리스트 추가 */
	public int addWish(WishDTO wish);
	
	/* 위시리스트 정보 리스트 */
	public List<WishDTO> getWishList(String memberId);
	
	/* 위시리스트 삭제 */
	public int deleteWish(WishDTO wish);

}
