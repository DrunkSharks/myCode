package com.gec.project.dao;

import com.gec.project.dao.entity.ShopType;

public interface IShopTypeDao {
	
	/**
	 * 根据id获取一条商品类型数据
	 * @param id
	 * @return
	 */
	public ShopType getShopTypeById(int id);
}
