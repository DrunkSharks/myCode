package com.gec.project.dao.entity;

public class User {
	private int uId;
	private String uLoginName;
	private String uPassword;
	private String uPhone;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getuId() {
		return uId;
	}
	public void setuId(int i) {
		this.uId = i;
	}
	public String getuLoginName() {
		return uLoginName;
	}
	public void setuLoginName(String uLoginName) {
		this.uLoginName = uLoginName;
	}
	public String getuPassword() {
		return uPassword;
	}
	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}
	public String getuPhone() {
		return uPhone;
	}
	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}
	@Override
	public String toString() {
		return "User [uId=" + uId + ", uLoginName=" + uLoginName + ", uPassword=" + uPassword + ", uPhone=" + uPhone
				+ "]";
	}
	

	

}
