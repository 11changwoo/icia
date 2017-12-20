package com.project.pension;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;
import com.project.dao.bookingDAO;
import com.project.util.Command;

public class writecommand implements Command {

	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String place = request.getParameter("place");
		String pname = request.getParameter("pname");
		String proom = request.getParameter("proom");
		String personnel = request.getParameter("personnel");
		String pprice = request.getParameter("pprice");
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");

		bookingDAO dao = new bookingDAO();
		dao.write(place, pname, proom, personnel, pprice, checkin, checkout);
	}

}
