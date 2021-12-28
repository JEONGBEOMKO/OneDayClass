package com.vam.mapper;

import java.util.List;

import com.vam.model.WishDTO;

public interface WishMapper {
	
	/* 위시리스트 추가 */
	public int addWish(WishDTO wish) throws Exception;
	
	/* 위시리스트 삭제 */
	public int deleteWish(WishDTO wish);
	
	/* 위시리스트 목록 */
	public List<WishDTO> getWish(String memberId);	
	
	/* 위시리스트 확인 */
	public WishDTO checkWish(WishDTO wish);
	
}
