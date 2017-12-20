package com.project.travel;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;

import com.project.dao.booking_travelDAO;
import com.project.dto.booking_travelDTO;
import com.project.util.Command;

public class tpopupcommand implements Command {

	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		
		String tplace = request.getParameter("tplacename");
		
		
		booking_travelDAO dao = new booking_travelDAO();
		booking_travelDTO dto = dao.tpopup(tplace);

		model.addAttribute("tpopup", dto);
	}
}
