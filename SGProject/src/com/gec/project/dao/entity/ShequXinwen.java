package com.gec.project.dao.entity;

import java.util.Date;

public class ShequXinwen {
	private int sxId;
	private String sxDes;
	private long sxClick;
	private long sxPinglun;
	private String sxLoginName;
	private Date sxModdate;

	public ShequXinwen() {
		super();
	}

	public ShequXinwen(int sxId, String sxDes, long sxClick, long sxPinglun, String sxLoginName, Date sxModdate) {
		super();
		this.sxId = sxId;
		this.sxDes = sxDes;
		this.sxClick = sxClick;
		this.sxPinglun = sxPinglun;
		this.sxLoginName = sxLoginName;
		this.sxModdate = sxModdate;
	}

	public int getSxId() {
		return sxId;
	}

	public void setSxId(int sxId) {
		this.sxId = sxId;
	}

	public String getSxDes() {
		return sxDes;
	}

	public void setSxDes(String sxDes) {
		this.sxDes = sxDes;
	}

	public long getSxClick() {
		return sxClick;
	}

	public void setSxClick(long sxClick) {
		this.sxClick = sxClick;
	}

	public long getSxPinglun() {
		return sxPinglun;
	}

	public void setSxPinglun(long sxPinglun) {
		this.sxPinglun = sxPinglun;
	}

	public String getSxLoginName() {
		return sxLoginName;
	}

	public void setSxLoginName(String sxLoginName) {
		this.sxLoginName = sxLoginName;
	}

	public Date getSxModdate() {
		return sxModdate;
	}

	public void setSxModdate(Date sxModdate) {
		this.sxModdate = sxModdate;
	}

	@Override
	public String toString() {
		return "ShequXinwen [sxId=" + sxId + ", sxDes=" + sxDes + ", sxClick=" + sxClick + ", sxPinglun=" + sxPinglun
				+ ", sxLoginName=" + sxLoginName + ", sxModdate=" + sxModdate + "]";
	}

}
