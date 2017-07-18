package com.qbd.dao;


import com.qbd.model.Cmg;

public interface CmgDao {

	public Cmg queryCmg(Cmg cmg);
	public void updateTs(String ts,String cid);
}
