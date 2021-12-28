package com.vam.model;

import java.util.Date;
import org.springframework.web.multipart.MultipartFile;

public class EclassVO {
	
	private int class_id;  //클래스 아이디
	private String cate_code;  //카테고리 코드
	private int creator_id;
	private String class_name;
	private int class_price;
	private String class_brief;
	private String class_tag;  //강좌 태그(new,top..)
	private double class_discount;
	private Date  class_register_date;
	private Date class_update_date;
	private String class_level;
	private MultipartFile class_thumb_uploadpath;
	private String class_thumb_uuid;
	private String class_thumb_filename;
	private MultipartFile class_img1_uploadpath;
	private String class_img1_uuid;
	private String class_img1_filename;
	private String class_info1;
	private MultipartFile class_img2_uploadpath;
	private String class_img2_uuid;
	private String class_img2_filename;
	private String class_info2;
	private MultipartFile class_img3_uploadpath;
	private String class_img3_uuid;
	private String class_img3_filename;
	private String class_info3;
	private String class_curriculum1;
	private String class_curriculum2;
	private String class_curriculum3;
	private String class_curriculum4;
	private MultipartFile creator_profile_uploadpath;
	private String creator_profile_filename;
	private String creator_name;
	private String creator_phone;
	private String creator_sns1;
	private String creator_sns2;
	private String creator_sns3;
	private String creator_info;
	private String cate_name;
	private int hit;
	private String tool_filename;
	
	public int getClass_id() {return class_id;}
	public void setClass_id(int class_id) {this.class_id = class_id;}
	
	public String getCate_code() {return cate_code;}
	public void setCate_code(String cate_code) {this.cate_code = cate_code;}
	
	public int getCreator_id() {return creator_id;}
	public void setCreator_id(int creator_id) {this.creator_id = creator_id;}
	
	public String getClass_name() {return class_name;}
	public void setClass_name(String class_name) {this.class_name = class_name;}
	
	public int getClass_price() {return class_price;}
	public void setClass_price(int class_price) {this.class_price = class_price;}
	
	public String getClass_brief() {return class_brief;}
	public void setClass_brief(String class_brief) {this.class_brief = class_brief;}
	
	public String getClass_tag() {return class_tag;}
	public void setClass_tag(String class_tag) {this.class_tag = class_tag;}
	
	public double getClass_discount() {return class_discount;}
	public void setClass_discount(double class_discount) {this.class_discount = class_discount;}
	
	public Date getClass_register_date() {return class_register_date;}
	public void setClass_register_date(Date class_register_date) {this.class_register_date = class_register_date;}
	
	public Date getClass_update_date() {return class_update_date;}
	public void setClass_update_date(Date class_update_date) {this.class_update_date = class_update_date;}
	
	public String getClass_level() {return class_level;}
	public void setClass_level(String class_level) {this.class_level = class_level;}
	
	public MultipartFile getClass_thumb_uploadpath() {return class_thumb_uploadpath;}
	public void setClass_thumb_uploadpath(MultipartFile class_thumb_uploadpath) {this.class_thumb_uploadpath = class_thumb_uploadpath;}
	
	public String getClass_thumb_uuid() {return class_thumb_uuid;}
	public void setClass_thumb_uuid(String class_thumb_uuid) {this.class_thumb_uuid = class_thumb_uuid;}
	
	public String getClass_thumb_filename() {return class_thumb_filename;}
	public void setClass_thumb_filename(String class_thumb_filename) {this.class_thumb_filename = class_thumb_filename;}
	
	public MultipartFile getClass_img1_uploadpath() {return class_img1_uploadpath;}
	public void setClass_img1_uploadpath(MultipartFile class_img1_uploadpath) {this.class_img1_uploadpath = class_img1_uploadpath;}
	
	public String getClass_img1_uuid() {return class_img1_uuid;}
	public void setClass_img1_uuid(String class_img1_uuid) {this.class_img1_uuid = class_img1_uuid;}
	
	public String getClass_img1_filename() {return class_img1_filename;}
	public void setClass_img1_filename(String class_img1_filename) {this.class_img1_filename = class_img1_filename;}
	
	public String getClass_info1() {return class_info1;}
	public void setClass_info1(String class_info1) {this.class_info1 = class_info1;}
	
	public MultipartFile getClass_img2_uploadpath() {return class_img2_uploadpath;}
	public void setClass_img2_uploadpath(MultipartFile class_img2_uploadpath) {this.class_img2_uploadpath = class_img2_uploadpath;}
	
	public String getClass_img2_uuid() {return class_img2_uuid;}
	public void setClass_img2_uuid(String class_img2_uuid) {this.class_img2_uuid = class_img2_uuid;}
	
	public String getClass_img2_filename() {return class_img2_filename;}
	public void setClass_img2_filename(String class_img2_filename) {this.class_img2_filename = class_img2_filename;}
	
	public String getClass_info2() {return class_info2;}
	public void setClass_info2(String class_info2) {this.class_info2 = class_info2;}
	
	public MultipartFile getClass_img3_uploadpath() {return class_img3_uploadpath;}
	public void setClass_img3_uploadpath(MultipartFile class_img3_uploadpath) {this.class_img3_uploadpath = class_img3_uploadpath;}
	
	public String getClass_img3_uuid() {return class_img3_uuid;}
	public void setClass_img3_uuid(String class_img3_uuid) {this.class_img3_uuid = class_img3_uuid;}
	
	public String getClass_img3_filename() {return class_img3_filename;}
	public void setClass_img3_filename(String class_img3_filename) {this.class_img3_filename = class_img3_filename;}
	
	public String getClass_info3() {return class_info3;}
	public void setClass_info3(String class_info3) {this.class_info3 = class_info3;}
	
	public String getClass_curriculum1() {return class_curriculum1;}
	public void setClass_curriculum1(String class_curriculum1) {this.class_curriculum1 = class_curriculum1;}
	
	public String getClass_curriculum2() {return class_curriculum2;}
	public void setClass_curriculum2(String class_curriculum2) {this.class_curriculum2 = class_curriculum2;}
	
	public String getClass_curriculum3() {return class_curriculum3;}
	public void setClass_curriculum3(String class_curriculum3) {this.class_curriculum3 = class_curriculum3;}
	
	public String getClass_curriculum4() {return class_curriculum4;}
	public void setClass_curriculum4(String class_curriculum4) {this.class_curriculum4 = class_curriculum4;}
	
	public MultipartFile getCreator_profile_uploadpath() {return creator_profile_uploadpath;}
	public void setCreator_profile_uploadpath(MultipartFile creator_profile_uploadpath) {this.creator_profile_uploadpath = creator_profile_uploadpath;}
	
	public String getCreator_profile_filename() {return creator_profile_filename;}
	public void setCreator_profile_filename(String creator_profile_filename) {this.creator_profile_filename = creator_profile_filename;}
	
	public String getCreator_name() {return creator_name;}
	public void setCreator_name(String creator_name) {this.creator_name = creator_name;}
	
	public String getCreator_phone() {return creator_phone;}
	public void setCreator_phone(String creator_phone) {this.creator_phone = creator_phone;}
	
	public String getCreator_sns1() {return creator_sns1;}
	public void setCreator_sns1(String creator_sns1) {this.creator_sns1 = creator_sns1;}
	
	public String getCreator_sns2() {return creator_sns2;}
	public void setCreator_sns2(String creator_sns2) {this.creator_sns2 = creator_sns2;}
	
	public String getCreator_sns3() {return creator_sns3;}
	public void setCreator_sns3(String creator_sns3) {this.creator_sns3 = creator_sns3;}
	
	public String getCreator_info() {return creator_info;}
	public void setCreator_info(String creator_info) {this.creator_info = creator_info;}
	
	public String getCate_name() {return cate_name;}
	public void setCate_name(String cate_name) {this.cate_name = cate_name;}
	
	public int getHit() {return hit;}
	public void setHit(int hit) {this.hit = hit;}
	
	public String getTool_filename() {return tool_filename;}
	public void setTool_filename(String tool_filename) {this.tool_filename = tool_filename;}
	
	@Override
	public String toString() {
		return "EclassVO [class_id=" + class_id + ", cate_code=" + cate_code + ", creator_id=" + creator_id
				+ ", class_name=" + class_name + ", class_price=" + class_price + ", class_brief=" + class_brief
				+ ", class_tag=" + class_tag + ", class_discount=" + class_discount + ", class_register_date="
				+ class_register_date + ", class_update_date=" + class_update_date + ", class_level=" + class_level
				+ ", class_thumb_uploadpath=" + class_thumb_uploadpath + ", class_thumb_uuid=" + class_thumb_uuid
				+ ", class_thumb_filename=" + class_thumb_filename + ", class_img1_uploadpath=" + class_img1_uploadpath
				+ ", class_img1_uuid=" + class_img1_uuid + ", class_img1_filename=" + class_img1_filename
				+ ", class_info1=" + class_info1 + ", class_img2_uploadpath=" + class_img2_uploadpath
				+ ", class_img2_uuid=" + class_img2_uuid + ", class_img2_filename=" + class_img2_filename
				+ ", class_info2=" + class_info2 + ", class_img3_uploadpath=" + class_img3_uploadpath
				+ ", class_img3_uuid=" + class_img3_uuid + ", class_img3_filename=" + class_img3_filename
				+ ", class_info3=" + class_info3 + ", class_curriculum1=" + class_curriculum1 + ", class_curriculum2="
				+ class_curriculum2 + ", class_curriculum3=" + class_curriculum3 + ", class_curriculum4="
				+ class_curriculum4 + ", creator_profile_uploadpath=" + creator_profile_uploadpath
				+ ", creator_profile_filename=" + creator_profile_filename + ", creator_name=" + creator_name
				+ ", creator_phone=" + creator_phone + ", creator_sns1=" + creator_sns1 + ", creator_sns2="
				+ creator_sns2 + ", creator_sns3=" + creator_sns3 + ", creator_info=" + creator_info + ", cate_name="
				+ cate_name + ", hit=" + hit + ", tool_filename=" + tool_filename + "]";
	}
	
	
	
}