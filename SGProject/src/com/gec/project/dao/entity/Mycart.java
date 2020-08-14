package com.gec.project.dao.entity;

import java.util.Date;

public class Mycart {
	private int cId;
	//标志是否选中
	private int checkedFlag;
	private String picPath;
	private int pNum;
	private Date createTime;
	private Product product;
	private User user;
	
	@Override
	public String toString() {
		return "Mycart [cId=" + cId + ", checkedFlag=" + checkedFlag + ", picPath=" + picPath + ", pNum=" + pNum
				+ ", createTime=" + createTime + ", product=" + product + ", user=" + user + "]";
	}
	
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public int getCheckedFlag() {
		return checkedFlag;
	}
	public void setCheckedFlag(int checkedFlag) {
		this.checkedFlag = checkedFlag;
	}
	public String getPicPath() {
		return picPath;
	}
	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}
	public int getpNum() {
		return pNum;
	}
	public void setpNum(int pNum) {
		this.pNum = pNum;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
