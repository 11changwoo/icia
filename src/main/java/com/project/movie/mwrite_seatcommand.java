package com.project.movie;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.project.dao.mbookingDAO;
import com.project.util.Command;

public class mwrite_seatcommand implements Command {

	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String seat1 = request.getParameter("seat1");
		String seat2 = request.getParameter("seat2");
		String seat3 = request.getParameter("seat3");
		String seat4 = request.getParameter("seat4");
		String seat = "";
		if (seat1 == null) {
			seat1 = "";
		}

		if (seat2 == null) {
			seat2 = "";
		} 
		if (seat3 == null) {
			seat3 = "";
		} 
		if (seat4 == null) {
			seat4 = "";
		} 

		seat = seat1 + seat2 + seat3 + seat4;

		mbookingDAO dao = new mbookingDAO();
		dao.mwrite_seat(seat);
	}

}