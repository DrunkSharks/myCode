package com.gec.project.dao;

import java.util.List;

import com.gec.project.dao.entity.Mycart;

public interface IMycartDao {
	
	public List<Mycart> getListMycart(int uId);
	
	public int delete(int cartId);
	
	public int update(Mycart mycart);
	
	public Mycart getCartById(int cartId);
	
	public Mycart getCartByPidAndUid(int pid,int uid);
	
	public int add(Mycart mycart);
	
}
