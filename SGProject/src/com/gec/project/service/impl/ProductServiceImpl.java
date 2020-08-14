package com.gec.project.service.impl;

import java.util.List;

import com.gec.project.dao.dto.PageBean;
import com.gec.project.dao.entity.Product;
import com.gec.project.dao.impl.ProductDapImpl;
import com.gec.project.service.IProductService;

public class ProductServiceImpl implements IProductService {
	
	ProductDapImpl product = new ProductDapImpl();
	
	@Override
	public Product getById(int id) {
		return product.getById(id);
	}

	@Override
	public List<Product> allList() {
		return product.allList();
	}

	@Override
	public PageBean<Product> getOnePage(int dangQianPage, int pageSize) {	
		return product.getOnePage(dangQianPage, pageSize);
	}

	@Override
	public List<Product> getListProductsByType(int type){
		return product.getListProductsByType(type);
	}

}
