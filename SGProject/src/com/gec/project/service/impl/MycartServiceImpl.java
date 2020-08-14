package com.gec.project.service.impl;

import java.util.List;

import com.gec.project.dao.IMycartDao;
import com.gec.project.dao.entity.Mycart;
import com.gec.project.dao.impl.MycartDaoImpl;
import com.gec.project.service.IMycartService;

public class MycartServiceImpl implements IMycartService{
	IMycartDao mycartDao = new MycartDaoImpl();

	@Override
	public List<Mycart> getListMycart(int uId) {
		return mycartDao.getListMycart(uId);
	}

	@Override
	public int delete(int cartId) {
		return mycartDao.delete(cartId);
	}

	@Override
	public int update(Mycart mycart){
		return mycartDao.update(mycart);
	}

	@Override
	public Mycart getCartById(int cartId) {
		return mycartDao.getCartById(cartId);
	}

	@Override
	public Mycart getCartByPidAndUid(int pid, int uid) {
		return mycartDao.getCartByPidAndUid(pid, uid);
	}

	@Override
	public int add(Mycart mycart) {
		return mycartDao.add(mycart);
	}
}
