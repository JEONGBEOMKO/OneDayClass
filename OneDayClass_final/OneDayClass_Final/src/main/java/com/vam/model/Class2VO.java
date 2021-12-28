package com.vam.model;

import java.util.Date;

public class Class2VO {
	
	/* 클래스 id */
	private int class_id;
	
	/* 카테고리 코드 */
	private String cate_code;
	
	/* 크리에이터_id */
	private int creator_id;
	
	/* 강좌 이름 */
	private String class_name;
	
	/* 강좌 가격 */
	private int class_price;
	
	/* 강좌 소개 */
	private String class_info;
	
	/* 강좌 테그(new,top..) */
	private String class_tag;
	
	/* 강좌 할인 (백분율)*/
	private double class_discount;
	
	
	/* 강좌 등록일 */
	private Date  class_register_date;
	
	/* 강좌 수정일 */
	private Date class_update_date;

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	public String getCate_code() {
		return cate_code;
	}

	public void setCate_code(String cate_code) {
		this.cate_code = cate_code;
	}

	public int getCreator_id() {
		return creator_id;
	}

	public void setCreator_id(int creator_id) {
		this.creator_id = creator_id;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}

	public int getClass_price() {
		return class_price;
	}

	public void setClass_price(int class_price) {
		this.class_price = class_price;
	}

	public String getClass_info() {
		return class_info;
	}

	public void setClass_info(String class_info) {
		this.class_info = class_info;
	}

	public String getClass_tag() {
		return class_tag;
	}

	public void setClass_tag(String class_tag) {
		this.class_tag = class_tag;
	}

	public double getClass_discount() {
		return class_discount;
	}

	public void setClass_discount(double class_discount) {
		this.class_discount = class_discount;
	}

	public Date getClass_register_date() {
		return class_register_date;
	}

	public void setClass_register_date(Date class_register_date) {
		this.class_register_date = class_register_date;
	}

	public Date getClass_update_date() {
		return class_update_date;
	}

	public void setClass_update_date(Date class_update_date) {
		this.class_update_date = class_update_date;
	}

	@Override
	public String toString() {
		return "ClassVO [class_id=" + class_id + ", cate_code=" + cate_code + ", creator_id=" + creator_id
				+ ", class_name=" + class_name + ", class_price=" + class_price + ", class_info=" + class_info
				+ ", class_tag=" + class_tag + ", class_discount=" + class_discount + ", class_register_date="
				+ class_register_date + ", class_update_date=" + class_update_date + "]";
	}
	
	
	


	
	 

}
