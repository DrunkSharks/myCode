package com.gec.project.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gec.project.dao.entity.Mycart;
import com.gec.project.dao.entity.Product;
import com.gec.project.dao.entity.User;
import com.gec.project.service.IMycartService;
import com.gec.project.service.IProductService;
import com.gec.project.service.impl.MycartServiceImpl;
import com.gec.project.service.impl.ProductServiceImpl;
import com.sun.javafx.runtime.SystemProperties;

public class MycartServlet extends BaseServlet{
	IMycartService mycartService = new MycartServiceImpl();
	IProductService productService = new ProductServiceImpl();
	
	public void getListMycart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Object u = session.getAttribute("user");
		if(u!=null)
		{
			if(u instanceof User)
			{
				User user = (User)u;
				List<Mycart> mycarts = mycartService.getListMycart(user.getuId());
				session.setAttribute("mycarts", mycarts);
				response.sendRedirect("shoppingcart.jsp");
			}
			else {
				System.out.println("类型转换出错!!");
				response.sendRedirect("HomepageServlet");
			}
		}
		else {
			System.out.println("请先登陆！！");
			//重定向到登陆页面
			response.sendRedirect("login.jsp");
		}
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cartIdStr=request.getParameter("cartId");
		if(cartIdStr!=null && !"".equals(cartIdStr)) {
			int cartId = Integer.parseInt(cartIdStr);
			int i = mycartService.delete(cartId);
			if(i>0)
			{
				System.out.println("删除成功！！");
				response.sendRedirect("MycartServlet?action=getListMycart");
			}
			else {
				System.out.println("删除失败");
				response.sendRedirect("shoppingcart.jsp");
			}
		}
		else {
			System.out.println("无法删除!!");
			response.sendRedirect("shoppingcart.jsp");
		}
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String selectNumStr = request.getParameter("isselect");
		String numStr = request.getParameter("num");
		String cIdStr=request.getParameter("cid");
		if(cIdStr!=null && !"".equals(cIdStr))
		{
			int cId=Integer.parseInt(cIdStr);
			Mycart mycart = mycartService.getCartById(cId);
			if(selectNumStr!=null && !"".equals(selectNumStr))
			{
				int selectNum=Integer.parseInt(selectNumStr);
				mycart.setCheckedFlag(selectNum);
			}
			if(numStr!=null && !"".equals(numStr))
			{
				int num=Integer.parseInt(numStr);
				mycart.setpNum(num);
			}
			int i = mycartService.update(mycart);
			if(i>0)
			{
				System.out.println("修改成功！！");
				response.sendRedirect("MycartServlet?action=getListMycart");
			}
			else {
				System.out.println("修改失败！！");
				response.sendRedirect("shoppingcart.jsp");
			}
		}
		else {
			System.out.println("无法修改!!");
			response.sendRedirect("shoppingcart.jsp");
		}
	}
	
	public void updateAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String selectNumStr = request.getParameter("isselect");
		if(selectNumStr!=null && !"".equals(selectNumStr))
		{
			int selectNum=Integer.parseInt(selectNumStr);
			HttpSession session = request.getSession();
			Object u = session.getAttribute("user");
			if(u!=null)
			{
				if(u instanceof User)
				{
					boolean flag=true;
					User user = (User)u;
					List<Mycart> mycarts = mycartService.getListMycart(user.getuId());
					for (Mycart mycart : mycarts) {
						mycart.setCheckedFlag(selectNum);
						int i = mycartService.update(mycart);
						if(i<=0)
						{
							flag=false;
						}
					}
					if(flag)
					{
						System.out.println("修改成功！！");
						response.sendRedirect("MycartServlet?action=getListMycart");
					}
					else {
						System.out.println("修改失败！！");
						response.sendRedirect("shoppingcart.jsp");
					}
				}
				else {
					System.out.println("类型转换出错!!");
					response.sendRedirect("HomepageServlet");
				}
			}
			else {
				System.out.println("请先登陆！！");
				//重定向到登陆页面
				response.sendRedirect("UserServlet?action=login");
			}
		}
		else {
			System.out.println("无法修改!!");
			response.sendRedirect("shoppingcart.jsp");
		}
	}
	
	/**
	 * 将商品添加到购物车
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void addCart(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		 HttpSession session = request.getSession();
		 Object u = session.getAttribute("user");
		 if(u!=null)
		 {
			 if(u instanceof User)
			 {
				 User user = (User)u;
				 int uid=user.getuId();
				 String pidStr = request.getParameter("pid");
				 if(pidStr!=null && !"".equals(pidStr))
				 {
					 int pid = Integer.parseInt(pidStr);
					 String pnumStr=request.getParameter("pnum");
					 if(pnumStr!=null && !"".equals(pnumStr))
					 {
						 int pnum = Integer.parseInt(pnumStr);
						 Mycart cart = mycartService.getCartByPidAndUid(pid, uid);
						 int i = -1;
						 if(cart!=null)
						 {
							 cart.setpNum(cart.getpNum()+pnum);
							 i = mycartService.update(cart);
						 }
						 else {
							 Mycart mycart = new Mycart();
							 Product product = productService.getById(pid);
							 mycart.setProduct(product);
							 mycart.setUser(user);
							 mycart.setCheckedFlag(2);
							 mycart.setPicPath(null);
							 mycart.setpNum(pnum);
							 mycart.setCreateTime(new Date());
							 i = mycartService.add(mycart);
						 }
						 if(i>0)
						 {
							 System.out.println("成功添加到购物车！！");
							 response.sendRedirect("MycartServlet?action=getListMycart");  //跳转到购物车
						 }
						 else {
							 System.out.println("添加失败！！");
							 response.sendRedirect("ProductServlet?action=productDetails&pid="+pidStr);
						 }
					 }
					 else {
						 System.out.println("要添加的商品数量获取失败！！");
						 response.sendRedirect("ProductServlet?action=productDetails&pid="+pidStr);
					 }
				 }
				 else {
					 System.out.println("找不到商品!!");
					 response.sendRedirect("goodslist.jsp");
				 }
			 }
			 else {
				 System.out.println("类型转换出错!!");
				 response.sendRedirect("login.jsp");
			 }
		 }
		 else {
			 System.out.println("请先登陆！！");
			 response.sendRedirect("login.jsp");
		 }
	}
}
