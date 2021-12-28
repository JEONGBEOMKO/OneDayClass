package com.vam.model;

import java.util.Arrays;

public class Criteria {

	/* 현재 페이지 번호 */
    private int pageNum;
    
    /* 페이지 표시 개수 */
    private int amount;
    
    /* 페이지 skip */
    private int skip;
    
    /* 검색 타입 */
    private String type;
    
    /* 검색 키워드 */
    private String keyword;
    
	/* 강좌 리스트 */
	private String[] classArr;
	
	/* 카테고리 코드 */
	private String cate_code;
	
	/* 강좌 이름 */
	private String class_name;
	
	/* 강좌 정보 */
    private String class_info;
    
	/* 강좌 테그(new,top..) */
	private String class_tag;
	
	/* 강좌 id */
	private int class_id;
    
    /* Criteria 생성자 */
    public Criteria(int pageNum, int amount, String type, String keyword) {
        this.pageNum = pageNum;
        this.amount = amount;
        this.type = type;
        this.keyword = keyword;
        this.skip = (pageNum -1) * amount;
    }
    
    /* Criteria 기본 생성자 */
    public Criteria(){
        this(1,10, "class_name", "");
    }
    
    /* 검색 타입 데이터 배열 변환 */
    public String[] getTypeArr() {
        return type == null? new String[] {}:type.split("");
    }

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
		this.skip = (pageNum - 1) * this.amount ;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
		this.skip = (this.pageNum - 1) * amount ;
	}

	public int getSkip() {
		return skip;
	}

	public void setSkip(int skip) {
		this.skip = skip;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String[] getClassArr() {
		return classArr;
	}

	public void setClassArr(String[] classArr) {
		this.classArr = classArr;
	}

	public String getCate_code() {
		return cate_code;
	}

	public void setCate_code(String cate_code) {
		this.cate_code = cate_code;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
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
	
	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", skip=" + skip + ", type=" + type
				+ ", keyword=" + keyword + ", classArr=" + Arrays.toString(classArr) + ", cate_code=" + cate_code
				+ ", class_name=" + class_name + ", class_info=" + class_info + ", class_tag=" + class_tag + ", class_id=" + class_id +"]";
	}
	
	
			
}
