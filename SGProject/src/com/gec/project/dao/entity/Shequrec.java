package com.gec.project.dao.entity;

public class Shequrec {
	private int srId;
	private String srPicpath;
	private String srDes;

	public Shequrec() {
		super();
	}

	public Shequrec(int srId, String srPicpath, String srDes) {
		super();
		this.srId = srId;
		this.srPicpath = srPicpath;
		this.srDes = srDes;
	}

	public int getSrId() {
		return srId;
	}

	public void setSrId(int srId) {
		this.srId = srId;
	}

	public String getSrPicpath() {
		return srPicpath;
	}

	public void setSrPicpath(String srPicpath) {
		this.srPicpath = srPicpath;
	}

	public String getSrDes() {
		return srDes;
	}

	public void setSrDes(String srDes) {
		this.srDes = srDes;
	}

	@Override
	public String toString() {
		return "Shequrec [srId=" + srId + ", srPicpath=" + srPicpath + ", srDes=" + srDes + "]";
	}

}
