package com.gec.project.dao;

import java.util.List;

import com.gec.project.dao.entity.Product;

public interface IProductDao {
	/**
	 * 根据传入product对象添加产品
	 * @param product 传入产品对象
	 * @return 大于0为添加成功
	 */
	public int save(Product product);
	
	/**
	 * 根据传入id删除对应产品
	 * @param id
	 * @return 大于0为删除成功
	 */
	public int delete(int id);
	
	/**
	 * 根据传入product对象修改产品
	 * @param product
	 * @return 大于0为修改成功
	 */
	public int update(Product product);
	
	/**
	 * 根据传入id获得一个Product对象
	 * @param id
	 * @return 不为null就表示查询成功
	 */
	public Product getById(int id);
	
	/**
	 * 查询所有产品
	 * @return
	 */
	public List<Product> allList();
	
	/**
	 * 根据产品类型获得4个该产品（根据id排序从第一件产品开始）
	 * @param type 产品类型id
	 * @return
	 */
	public List<Product> getListProductsByType(int type);
	
}
