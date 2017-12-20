package com.project.movie;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.project.dao.mbookingDAO;
import com.project.dto.mbookingDTO;
import com.project.util.Command;

public class mpopupcommand implements Command {

	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String mroom = request.getParameter("mroomname");
		mbookingDAO dao = new mbookingDAO();
		mbookingDTO dto = dao.mpopup(mroom);

		model.addAttribute("mpopup", dto);
	}
}