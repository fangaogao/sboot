package com.qbd.model;

import java.io.Serializable;

public class Cmg  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5091611161372793486L;
	private Integer cid;
	private String cname;
	private String pwd;
	private String ts;
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getTs() {
		return ts;
	}
	public void setTs(String ts) {
		this.ts = ts;
	}
	 
	
}
