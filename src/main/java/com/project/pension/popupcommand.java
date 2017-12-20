package com.project.pension;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.project.dao.bookingDAO;
import com.project.dto.bookingDTO;
import com.project.util.Command;

public class popupcommand implements Command {
	
	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String proom = request.getParameter("proomname");
		
		bookingDAO dao = new bookingDAO();
		bookingDTO dto = dao.popup(proom);

		model.addAttribute("popup", dto);
	}
}
