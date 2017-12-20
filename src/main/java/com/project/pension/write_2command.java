package com.project.pension;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.project.dao.bookingDAO;
import com.project.dto.bookingDTO;
import com.project.util.Command;

public class write_2command implements Command {
	
	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpSession session = (HttpSession) map.get("session");
		
		bookingDAO dao = new bookingDAO();
		bookingDTO dto = dao.write_2();
		model.addAttribute("id",session.getAttribute("loginUser"));
		model.addAttribute("write_2", dto);
	}
}
