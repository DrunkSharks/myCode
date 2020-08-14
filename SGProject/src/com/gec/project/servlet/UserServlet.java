package com.gec.project.servlet;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gec.project.dao.entity.Product;
import com.gec.project.dao.entity.ShopType;
import com.gec.project.dao.entity.User;
import com.gec.project.service.IProductService;
import com.gec.project.service.IShopTypeService;
import com.gec.project.service.IUserService;
import com.gec.project.service.impl.ProductServiceImpl;
import com.gec.project.service.impl.ShopTypeServiceImpl;
import com.gec.project.service.impl.UserServiceImpl;

public class UserServlet extends BaseServlet {
	IUserService userService=new UserServiceImpl();
	IProductService productService = new ProductServiceImpl();
	IShopTypeService ShopTypeService = new ShopTypeServiceImpl();
	
	public void save(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String password=request.getParameter("password");
		String phone=request.getParameter("phone");
		String yzm=request.getParameter("yzm");
		if(!yzm.equals("xyya")) {
			response.sendRedirect("register.jsp");
			return;
		}
		Date date=new Date();
		int y=date.getYear();
		int M=date.getMonth();
		int d=date.getDate();
		int h=date.getHours();
		int m=date.getMinutes();
		int s=date.getSeconds();
		User user=new User();
		user.setuPassword(password);
		user.setuPhone(phone);
		user.setuLoginName(""+y+M+d+h+m+s);
		int i=userService.save(user);
		if(i==-1) {
			response.sendRedirect("register.jsp");
		}else {
			response.sendRedirect("login.jsp");
		}
	}
	public void login(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userName = request.getParameter("phone");
		if(userName!=null)
		{
			if(userName.length()<11) {
				session.setAttribute("exc", "手机号不能小于11位！");
				response.sendRedirect("login.jsp");
				return;
			}
			String passWord = request.getParameter("password");
			System.out.println(userName);
			System.out.println(passWord); 
			User user = userService.login(userName, passWord);
			if(user!=null){
				session.setAttribute("user", user);
				List<Product> tangMaoPros = productService.getListProductsByType(2);
				session.setAttribute("tangMaoPros", tangMaoPros);
				response.sendRedirect("personal.jsp");
				//request.getRequestDispatcher("personal.jsp").forward(request, response);//类似于收到请求，我找index商量一下，但是只发送一次请求，所以商量过后带着我们一起的成果告诉你
				//response.sendRedirect("index.jsp");//重定向类似与你找我，但是我不知道让你去找index，当然他也不知道，但是是他回应你，他没有收到值
			}else{
				session.setAttribute("exc", "手机号或密码错误！");
				response.sendRedirect("login.jsp");
			}
		}
	}
	public void logout(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		request.getRequestDispatcher("personal.jsp").forward(request, response);
	}

}
