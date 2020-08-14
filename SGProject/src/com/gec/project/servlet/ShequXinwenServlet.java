package com.gec.project.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gec.project.dao.entity.ShequXinwen;
import com.gec.project.service.IShequXinwenService;
import com.gec.project.service.impl.ShequXinwenServiceImpl;

public class ShequXinwenServlet extends BaseServlet {
	IShequXinwenService iShequXinwenService = new ShequXinwenServiceImpl();

	public void save(HttpServletRequest request, HttpServletResponse response) {

	}

	public void delete(HttpServletRequest request, HttpServletResponse response) {

	}

	public void update(HttpServletRequest request, HttpServletResponse response) {

	}

	public void getById(HttpServletRequest request, HttpServletResponse response) {

	}

	public void allList(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List<ShequXinwen> shequXinwens = iShequXinwenService.allList();
		HttpSession session = request.getSession();
		session.setAttribute("shequXinwens", shequXinwens);
		response.sendRedirect("shequ.jsp");
	}

}
