package com.gec.project.service.impl;

import java.util.List;

import com.gec.project.dao.IShequrecDao;
import com.gec.project.dao.entity.Shequrec;
import com.gec.project.dao.impl.ShequrecDaoImpl;
import com.gec.project.service.IShequrecService;

public class ShequrecServiceImpl implements IShequrecService{
	IShequrecDao shequrecDao = new ShequrecDaoImpl();
	@Override
	public int save(Shequrec shequrec) {
		// TODO Auto-generated method stub
		return shequrecDao.save(shequrec);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return shequrecDao.delete(id);
	}

	@Override
	public int update(Shequrec shequrec) {
		// TODO Auto-generated method stub
		return shequrecDao.update(shequrec);
	}

	@Override
	public Shequrec getById(int id) {
		// TODO Auto-generated method stub
		return shequrecDao.getById(id);
	}

	@Override
	public List<Shequrec> allList() {
		// TODO Auto-generated method stub
		return shequrecDao.allList();
	}

}
