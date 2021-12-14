package com.vam.model;

import java.util.Date;

public class CreatorVO {
	
	/* 크리에이터 아이디 */
	private int creator_id;
	
	/* 크리에이터 memberId */
	private String memberId;
	
	/* 크리에이터 이름(닉네임) */
	private String creator_name;
	
	/* 크리에이터 소개 */
	private String creator_intro;
	
	/* 등록 날짜*/
	private Date reg_date;
	
	/* 업데이트 날짜*/
	private Date update_date;
	
	

	public int getCreator_id() {
		return creator_id;
	}

	public void setCreator_id(int creator_id) {
		this.creator_id = creator_id;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getCreator_name() {
		return creator_name;
	}

	public void setCreator_name(String creator_name) {
		this.creator_name = creator_name;
	}

	public String getCreator_intro() {
		return creator_intro;
	}

	public void setCreator_intro(String creator_intro) {
		this.creator_intro = creator_intro;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public Date getUpdate_date() {
		return update_date;
	}

	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}

	@Override
	public String toString() {
		return "AuthorVO [creator_id=" + creator_id + ", memberId=" + memberId + ", creator_name=" + creator_name
				+ ", creator_intro=" + creator_intro + ", reg_date=" + reg_date + ", update_date=" + update_date + "]";
	}
	

}
