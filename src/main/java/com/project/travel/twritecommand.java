package com.project.travel;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.project.dao.booking_travelDAO;
import com.project.util.Command;

public class twritecommand implements Command {

	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String tplace = request.getParameter("tplace");
		String tname = request.getParameter("tname");
		String tvehicle = request.getParameter("tvehicle");
		String tpersonnel = request.getParameter("tpersonnel");
		String tprice = request.getParameter("tprice");
		String tstart = request.getParameter("tstart");
		String tend = request.getParameter("tend");

		booking_travelDAO dao = new booking_travelDAO();
		dao.twrite(tplace, tname, tvehicle, tpersonnel, tprice, tstart, tend);
	}

}
