package com.gec.project.servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BaseServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//从服务器端传到客户端产生的乱码处理
		response.setCharacterEncoding("utf-8");
		//响应头的乱码处理
		response.setContentType("text/html; charset=UTF-8");	
		//得到客户端传入的action
		String action = request.getParameter("action");
		if (null==action||"".equals(action)) {
			response.getWriter().write("您提交的是非法数据！！");
			return;
		}
		//根据输入的动作得到本对象的相应的方法对象：反射机制：反射可以做未来不确定是事情。你知道我下一刻添加什么方法吗？
		try {
			//action能是字符串
			Method method = this.getClass().getMethod(action, HttpServletRequest.class,HttpServletResponse.class);
			method.invoke(this, request,response);//调用动作对应的方法
		} catch (Exception e) {
			response.getWriter().write("您提交的是非法数据！！");
			e.printStackTrace();
		}
	}
}
