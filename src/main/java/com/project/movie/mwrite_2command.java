package com.project.movie;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.project.dao.mbookingDAO;
import com.project.dto.mbookingDTO;
import com.project.util.Command;

public class mwrite_2command implements Command {
	
	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpSession session = (HttpSession) map.get("session");
		
		mbookingDAO dao = new mbookingDAO();
		mbookingDTO dto = dao.mwrite_2();
		
		model.addAttribute("id",session.getAttribute("loginUser"));
		model.addAttribute("mwrite_2", dto);
	}
}
