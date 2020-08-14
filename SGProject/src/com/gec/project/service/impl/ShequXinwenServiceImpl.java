package com.gec.project.service.impl;

import java.util.List;

import com.gec.project.dao.IShequXinwenDao;
import com.gec.project.dao.entity.ShequXinwen;
import com.gec.project.dao.impl.ShequXinwenDaoImpl;
import com.gec.project.service.IShequXinwenService;

public class ShequXinwenServiceImpl implements IShequXinwenService{
	IShequXinwenDao shequXinwenDao = new ShequXinwenDaoImpl();
	@Override
	public int save(ShequXinwen shequXinwen) {
		// TODO Auto-generated method stub
		return shequXinwenDao.save(shequXinwen);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return shequXinwenDao.delete(id);
	}

	@Override
	public int update(ShequXinwen shequXinwen) {
		// TODO Auto-generated method stub
		return shequXinwenDao.update(shequXinwen);
	}

	@Override
	public ShequXinwen getById(int id) {
		// TODO Auto-generated method stub
		return shequXinwenDao.getById(id);
	}

	@Override
	public List<ShequXinwen> allList() {
		// TODO Auto-generated method stub
		return shequXinwenDao.allList();
	}

}
