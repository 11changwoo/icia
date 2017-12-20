package com.project.board;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.project.dao.BDao;
import com.project.dto.BDto;
import com.project.util.Command;

public class BListCommand implements Command {

	@Override
	public void execute(Model model) throws Exception {
		BDao dao = new BDao();
//		ArrayList<BDto> dtos = dao.list();
//		model.addAttribute("list", dtos);
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		
		//페이징
		int pg = 1; // 페이지 번호
		int pgSize = 15; // 한 페이지에 보여줄 글의 개수
		int total = dao.getTotal(); // 총 게시글 개수
		System.out.println("total =" +total);
		
		if (request.getParameter("pg") != null)
			pg = Integer.parseInt(request.getParameter("pg"));
		System.out.println(request.getParameter("pg"));
		System.out.println("pg = "+pg);
		
		int begin = (pg * pgSize) - (pgSize - 1); // (2 * 15) - (15 - 1) =30-14=16//15-14=1
		System.out.println("begin = "+begin);
		
		int end = (pg*pgSize); // (2 * 15) =30
		System.out.println("end ="+end);
		
		ArrayList<BDto> list = dao.listBoard(begin, end);
		
		int allPage = (int) Math.ceil(total/(double) pgSize); // 페이지 개수// Math.ceil 같거나 큰 정수
		int block = 10; // 한 페이지에 보여줄 페이지 번호 범위
		int beginPage = ((pg - 1) / block * block) + 1; // 보여줄 페이지의 시작
		int endPage = ((pg - 1) / block * block) + block; // 보여줄 페이지의 끝
		if (endPage > allPage) 
		{
			endPage = allPage;
		}
		model.addAttribute("list", list);
		model.addAttribute("pg", pg);
		model.addAttribute("block", block);
		model.addAttribute("beginPage", beginPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("allPage", allPage);
		//페이징 끝
	}
}