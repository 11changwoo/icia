package com.project.travel;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.project.dao.booking_travelDAO;
import com.project.dto.booking_travelDTO;
import com.project.util.Command;

public class twrite_2command implements Command {

	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpSession session = (HttpSession) map.get("session");
		
		booking_travelDAO dao = new booking_travelDAO();
		booking_travelDTO dto = dao.twrite_2();
		model.addAttribute("id",session.getAttribute("loginUser"));
		model.addAttribute("twrite_2", dto);
	}
}
