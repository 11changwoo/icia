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
		
		
		//����¡
		int pg = 1; // ������ ��ȣ
		int pgSize = 15; // �� �������� ������ ���� ����
		int total = dao.getTotal(); // �� �Խñ� ����
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
		
		int allPage = (int) Math.ceil(total/(double) pgSize); // ������ ����// Math.ceil ���ų� ū ����
		int block = 10; // �� �������� ������ ������ ��ȣ ����
		int beginPage = ((pg - 1) / block * block) + 1; // ������ �������� ����
		int endPage = ((pg - 1) / block * block) + block; // ������ �������� ��
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
		//����¡ ��
	}
}