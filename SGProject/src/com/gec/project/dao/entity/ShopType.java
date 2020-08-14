package com.gec.project.dao.entity;

public class ShopType {
	private int sId;
	private String sName;
	private String sDes;
	
	@Override
	public String toString() {
		return "ShopType [sId=" + sId + ", sName=" + sName + ", sDes=" + sDes + "]";
	}
	
	public int getsId() {
		return sId;
	}
	public void setsId(int sId) {
		this.sId = sId;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsDes() {
		return sDes;
	}
	public void setsDes(String sDes) {
		this.sDes = sDes;
	}
}
