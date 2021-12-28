package com.vam.model;

public class CartDTO {

    private int cartId;
    
    private String memberId;
    
    private int class_id;
    
    private int class_count;
    
    //class
    
    private String class_name;
    
    private int class_price;
    
    private double class_discount;
    
    // 추가
    private int salePrice;
    
    private int totalPrice;
    
    private int point;
    
    private int totalPoint;
    
    private String class_thumb_filename;

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	public int getClass_count() {
		return class_count;
	}

	public void setClass_count(int class_count) {
		this.class_count = class_count;
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

	public double getClass_discount() {
		return class_discount;
	}

	public void setClass_discount(double class_discount) {
		this.class_discount = class_discount;
	}

	public int getSalePrice() {
		return salePrice;
	}

	public int getTotalPrice() {
		return totalPrice;
	}
	
	public int getPoint() {
		return point;
	}

	public int getTotalPoint() {
		return totalPoint;
	}
	
   public String getClass_thumb_filename() {
	      return class_thumb_filename;
	   }

	   public void setClass_thumb_filename(String class_thumb_filename) {
	      this.class_thumb_filename = class_thumb_filename;
	   }

	public void initSaleTotal() {
		this.salePrice = (int) (this.class_price * (1-this.class_discount/100));
		this.totalPrice = this.salePrice*this.class_count;
		this.point = (int)(Math.floor(this.salePrice*0.05));
		this.totalPoint =this.point * this.class_count;
	}

   @Override
   public String toString() {
      return "CartDTO [cartId=" + cartId + ", memberId=" + memberId + ", class_id=" + class_id + ", class_count="
            + class_count + ", class_name=" + class_name + ", class_price=" + class_price + ", class_discount="
            + class_discount + ", salePrice=" + salePrice + ", totalPrice=" + totalPrice + ", point=" + point
            + ", totalPoint=" + totalPoint + ", class_thumb_filename=" + class_thumb_filename + "]";
   }


    
}
