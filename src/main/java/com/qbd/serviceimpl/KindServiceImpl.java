package com.qbd.serviceimpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qbd.dao.KindDao;
import com.qbd.model.Kind;
import com.qbd.service.KindService;

@Service("kindService")
public class KindServiceImpl implements KindService {

	@Autowired
	private KindDao kindDao;

	@Override
	public List<Kind> list(Kind kind) {
		return kindDao.list(kind);
	}

	@Override
	public void add(Kind kind) {
		kindDao.add(kind);
	}

	@Override
	public Long queryCount(Kind kind) {
		return kindDao.queryCount(kind);
	}

	@Override
	public Kind byId(Integer kid) {
		return kindDao.byId(kid);
	}

	@Override
	public void update(Kind k) {
		kindDao.update(k) ;
	}

	@Override
	public void deleteById(Integer kid) {
		kindDao.deleteById(kid);
	}

	 
	
	 
	

}
