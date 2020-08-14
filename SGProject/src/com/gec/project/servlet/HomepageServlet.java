package com.gec.project.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gec.project.dao.entity.Product;
import com.gec.project.dao.entity.ShopType;
import com.gec.project.service.IProductService;
import com.gec.project.service.IShopTypeService;
import com.gec.project.service.impl.ProductServiceImpl;
import com.gec.project.service.impl.ShopTypeServiceImpl;

public class HomepageServlet extends BaseServlet {
	IProductService productService = new ProductServiceImpl();
	IShopTypeService ShopTypeService = new ShopTypeServiceImpl();

	public void showHomepage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		// 获取智能产品
		List<Product> zhiNengPros = productService.getListProductsByType(1);
		session.setAttribute("zhiNengPros", zhiNengPros);
		ShopType zhiNengType = ShopTypeService.getShopTypeById(1);
		session.setAttribute("zhiNengType", zhiNengType);
		// 获取糖猫产品
		List<Product> tangMaoPros = productService.getListProductsByType(2);
		session.setAttribute("tangMaoPros", tangMaoPros);
		ShopType tangMaoType = ShopTypeService.getShopTypeById(2);
		session.setAttribute("tangMaoType", tangMaoType);
		// 获取配件
		List<Product> peiJians = productService.getListProductsByType(3);
		session.setAttribute("peiJians", peiJians);
		ShopType peiJianType = ShopTypeService.getShopTypeById(3);
		session.setAttribute("peiJianType", peiJianType);

		response.sendRedirect("index.jsp");
	}

}
