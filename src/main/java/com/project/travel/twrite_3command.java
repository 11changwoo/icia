package com.project.travel;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.project.dao.booking_travelDAO;
import com.project.util.Command;

public class twrite_3command implements Command{

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
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String questions = request.getParameter("questions");
		String card = request.getParameter("card");
		String cardnumber1 = request.getParameter("cardnumber1");
		String cardnumber2 = request.getParameter("cardnumber2");
		String cardnumber3 = request.getParameter("cardnumber3");
		String cardnumber4 = request.getParameter("cardnumber4");
		String cardpass = request.getParameter("cardpass");
		String cardterm1 = request.getParameter("cardterm1");
		String cardterm2 = request.getParameter("cardterm2");
		String cardidnumber = request.getParameter("cardidnumber");
		String bank = request.getParameter("bank");
		String banknumber = request.getParameter("banknumber");
		String bankpass = request.getParameter("bankpass");
		String bankidnumber1 = request.getParameter("bankidnumber1");
		String bankidnumber2 = request.getParameter("bankidnumber2");
		String bankmaster = request.getParameter("bankmaster");
		String check = request.getParameter("check");
		
		String cardnumber = cardnumber1+"-"+cardnumber2+"-"+cardnumber3+"-"+cardnumber4;
		String cardterm = cardterm1+cardterm2;
		String bankidnumber = bankidnumber1+"-"+bankidnumber2;
		
		booking_travelDAO dao = new booking_travelDAO();
		try {
			dao.twrite_3(tplace, tname, tvehicle, tpersonnel, tprice, tstart, tend, id, name, email, tel, questions, card, cardnumber, cardpass, cardterm, cardidnumber, bank, banknumber, bankpass, bankidnumber, bankmaster, check);
		} catch (Exception e) {
			throw new Exception();
		}
		
		dao.updateNow(tname, tstart, tend);
	}

}
