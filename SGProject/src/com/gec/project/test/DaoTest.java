package com.gec.project.test;

import com.gec.project.dao.IMycartDao;
import com.gec.project.dao.entity.Mycart;
import com.gec.project.dao.impl.MycartDaoImpl;
import com.gec.project.dao.impl.ProductDapImpl;

public class DaoTest {
	public static void main(String[] args) {
//		IProduct iProduct = new ProductDapImpl();
		// 增加测试
		// Product product = new Product(6, "商品名字", "商品描述", "图片路径", 999, 10, 1);
		// iProduct.save(product);

		// 删除测试
		// iProduct.delete(5);

		// 修改测试
		// iProduct.update(product);

		// id查询记录测试
		// System.out.println(iProduct.getById(1));

		// 查询所有产品测试
		// List<Product> lists = iProduct.allList();
		// for (Product product : lists) {
		// System.out.println(product);
		// }
		IMycartDao mycartDao = new MycartDaoImpl();
		Mycart mycart = mycartDao.getCartByPidAndUid(3, 6);
		System.out.println(mycart);
	}
	
	public void add() {
		System.err.println("添加了ADD方法");
	}
}
