package com.gec.project.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gec.project.dao.entity.Shequrec;
import com.gec.project.service.IShequrecService;
import com.gec.project.service.impl.ShequrecServiceImpl;

public class ShequrecServlet extends BaseServlet {
	IShequrecService iShequrecService = new ShequrecServiceImpl();

	public void save(HttpServletRequest request, HttpServletResponse response) {

	}

	public void delete(HttpServletRequest request, HttpServletResponse response) {

	}

	public void update(HttpServletRequest request, HttpServletResponse response) {

	}

	public void getById(HttpServletRequest request, HttpServletResponse response) {

	}

	public void allList(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List<Shequrec> shequRecs = iShequrecService.allList();
		HttpSession session = request.getSession();
		session.setAttribute("shequRecs", shequRecs);
		response.sendRedirect("shequ.jsp");
	}
}
