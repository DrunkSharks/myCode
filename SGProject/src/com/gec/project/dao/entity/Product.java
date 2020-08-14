package com.gec.project.dao.entity;

public class Product {
	private int pId;
	private String pName;
	private String pDes;
	private String pPicpath;
	private int pPrice;
	private int pRes;
	private int pType;
	private String pRecPicPath;
	
	@Override
	public String toString() {
		return "Product [pId=" + pId + ", pName=" + pName + ", pDes=" + pDes + ", pPicpath=" + pPicpath + ", pPrice="
				+ pPrice + ", pRes=" + pRes + ", pType=" + pType + ", pRecPicPath=" + pRecPicPath + "]";
	}
	
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpDes() {
		return pDes;
	}
	public void setpDes(String pDes) {
		this.pDes = pDes;
	}
	public String getpPicpath() {
		return pPicpath;
	}
	public void setpPicpath(String pPicpath) {
		this.pPicpath = pPicpath;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	public int getpRes() {
		return pRes;
	}
	public void setpRes(int pRes) {
		this.pRes = pRes;
	}
	public int getpType() {
		return pType;
	}
	public void setpType(int pType) {
		this.pType = pType;
	}
	public String getpRecPicPath() {
		return pRecPicPath;
	}
	public void setpRecPicPath(String pRecPicPath) {
		this.pRecPicPath = pRecPicPath;
	}

}
