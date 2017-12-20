package com.project.movie;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.project.dao.mbookingDAO;
import com.project.dto.mbookingDTO;
import com.project.util.Command;

public class mwritecommand implements Command{

	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String mplace = request.getParameter("mplace");
		String mname = request.getParameter("mname");
		String mroom = request.getParameter("mroom");
		String mpersonnel = request.getParameter("mpersonnel");
		String mprice = request.getParameter("mprice");
		String mday = request.getParameter("mday");
		
		
		mbookingDAO dao = new mbookingDAO();
		dao.mwrite(mplace, mname, mroom, mpersonnel, mprice, mday);
		
		ArrayList<mbookingDTO> dto = dao.seat_m();

		model.addAttribute("seat_m", dto);
	}

}