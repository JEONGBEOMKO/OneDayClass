package com.vam.model;

public class CateVO {
	
	/* 카테고리 등급 */
	private int tier;
	
	/* 카테고리 이름 */
	private String cate_name;
	
	/* 카테고리 넘버 */
	private String cate_code;
	
	/* 상위 카테고리 */
	private String cate_parent;

	public int getTier() {
		return tier;
	}

	public void setTier(int tier) {
		this.tier = tier;
	}

	public String getCate_name() {
		return cate_name;
	}

	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}

	public String getCate_code() {
		return cate_code;
	}

	public void setCate_code(String cate_code) {
		this.cate_code = cate_code;
	}

	public String getCate_parent() {
		return cate_parent;
	}

	public void setCate_parent(String cate_parent) {
		this.cate_parent = cate_parent;
	}

	@Override
	public String toString() {
		return "CateVO [tier=" + tier + ", cate_name=" + cate_name + ", cate_code=" + cate_code + ", cate_parent="
				+ cate_parent + "]";
	}
	
	
	

}
