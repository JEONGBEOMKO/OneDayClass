package com.vam.model;

import java.util.Date;

public class ReplyVO {

	private int class_id;
	private int reply_id;
	private String reply_memo;
	private String memberId;
	private Date reply_date;
	
	private String memberName;
	private String creator_profile_filename;
	
	
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
	public int getReply_id() {
		return reply_id;
	}
	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}
	public String getReply_memo() {
		return reply_memo;
	}
	public void setReply_memo(String reply_memo) {
		this.reply_memo = reply_memo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public Date getReply_date() {
		return reply_date;
	}
	public void setReply_date(Date reply_date) {
		this.reply_date = reply_date;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getCreator_profile_filename() {
		return creator_profile_filename;
	}
	public void setCreator_profile_filename(String creator_profile_filename) {
		this.creator_profile_filename = creator_profile_filename;
	}
	@Override
	public String toString() {
		return "ReplyVO [class_id=" + class_id + ", reply_id=" + reply_id + ", reply_memo=" + reply_memo + ", memberId="
				+ memberId + ", reply_date=" + reply_date + ", memberName=" + memberName + ", creator_profile_filename="
				+ creator_profile_filename + "]";
	}
	
	
}
