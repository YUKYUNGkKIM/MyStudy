package com.ssafy.fit.model.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssafy.fit.model.service.MainService;
import com.ssafy.fit.model.service.MainServiceImpl;

@WebServlet("/main")
public class MainController extends HttpServlet {

	private MainService service = MainServiceImpl.getInstance();

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// POST 요청에서는 인코딩 방식을 바꿔!
		if (req.getMethod().equals("POST"))
			req.setCharacterEncoding("UTF-8");

		String act = req.getParameter("act");

		switch (act) {
		case "list":
			doList(req, resp);
			break;
		}
	}

	private void doList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("viewCntList", service.getInterestViewFitVideo());
		req.setAttribute("PartList", service.getInterestViewFitVideo());
		req.getRequestDispatcher("/main/list.jsp").forward(req, resp);

	}
}
