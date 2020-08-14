package com.gec.project.service.impl;

import com.gec.project.dao.IShopTypeDao;
import com.gec.project.dao.entity.ShopType;
import com.gec.project.dao.impl.ShopTypeDaoImpl;
import com.gec.project.service.IShopTypeService;

public class ShopTypeServiceImpl implements IShopTypeService{
	IShopTypeDao ShopTypeDao = new ShopTypeDaoImpl();
	
	@Override
	public ShopType getShopTypeById(int id) {
		return ShopTypeDao.getShopTypeById(id);
	}

}
