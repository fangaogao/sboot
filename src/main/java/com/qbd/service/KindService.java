package com.qbd.service;


import java.util.List;

import com.qbd.model.Kind;

public interface KindService {
	public List<Kind> list(Kind kind);
	public void add(Kind kind);
	public Long queryCount(Kind kind);
	public Kind byId(Integer kid);
	public void update(Kind k);
	public void deleteById(Integer kid);
}
