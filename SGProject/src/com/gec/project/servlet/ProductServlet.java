package com.gec.project.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.gec.project.dao.dto.PageBean;
import com.gec.project.dao.entity.Product;
import com.gec.project.service.impl.ProductServiceImpl;

public class ProductServlet extends BaseServlet {
	
	ProductServiceImpl productServiceImpl =new ProductServiceImpl();
	
	public void page(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageString = request.getParameter("page");
		int dangQianPage;
		if(pageString==null)
			dangQianPage = 1;
		else
			dangQianPage = new Integer(pageString);
		PageBean<Product> pageBean = productServiceImpl.getOnePage(dangQianPage, 20);
		request.setAttribute("pageBean", pageBean);
		request.getRequestDispatcher("goodslist.jsp").forward(request, response);
	}
	
	public void productDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pidStr=request.getParameter("pid");
		if(pidStr!=null && !"".equals(pidStr))
		{
			int pid=Integer.parseInt(pidStr);
			Product product = productServiceImpl.getById(pid);
			HttpSession session = request.getSession();
			session.setAttribute("product", product);
			response.sendRedirect("proDetails.jsp");
		}
		else {
			System.out.println("该商品不存在！！");
			response.sendRedirect("goodslist.jsp");
		}
	}
	
}
