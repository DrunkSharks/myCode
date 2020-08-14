package com.gec.project.service;

import java.util.List;

import com.gec.project.dao.dto.PageBean;
import com.gec.project.dao.entity.Product;

public interface IProductService {
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
	
	public PageBean<Product> getOnePage(int dangQianPage, int pageSize);
	
	public List<Product> getListProductsByType(int type);
}
