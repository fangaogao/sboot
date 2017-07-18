package com.qbd.serviceimpl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qbd.dao.CmgDao;
import com.qbd.model.Cmg;
import com.qbd.service.CmgService;

@Service("cmgService")
public class CmgServiceImpl implements CmgService {

	@Autowired
	private CmgDao cmgDao;

	@Override
	public Cmg queryCmg(Cmg cmg) {
		return cmgDao.queryCmg(cmg);
	}

	@Override
	public void updateTs(String ts, String cid) {
		cmgDao.updateTs(ts, cid);
	}
	
	 
	

}
