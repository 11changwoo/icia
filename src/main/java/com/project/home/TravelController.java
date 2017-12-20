package com.project.home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.travel.LTravel;
import com.project.travel.tpopupcommand;
import com.project.travel.twrite_2command;
import com.project.travel.twrite_3command;
import com.project.travel.twritecommand;
import com.project.util.Command;

@Controller
public class TravelController {
	
	Command command;
	
	@RequestMapping("/travel")
	public String travel(Model model) throws Exception {
		
		command = new LTravel();
		command.execute(model);
		
		return "travel/travel";
	}
	
	//여행 - 사용자 입력 정보
	@RequestMapping("twrite.wo")
	public String twrite(HttpServletRequest request, Model model) throws Exception {
		
		model.addAttribute("request",request);
		command = new twritecommand();
		command.execute(model);
		
		return "travel/tbooking_3";
	}
	
	@RequestMapping("twrite_2.wo")
	public String twrite_2(HttpSession session, Model model) throws Exception {
		
		model.addAttribute("session", session);
		command = new twrite_2command();
		command.execute(model);
		
		return "travel/tbooking_2";
	}
	
	@RequestMapping("twrite_3.wo")
	public String twriter_3(HttpServletRequest request, Model model) throws Exception {
		
		model.addAttribute("request",request);
		
		command = new twrite_3command();
		try  {
			command.execute(model);
		
			return "util/suc";
		} catch(Exception e) {
			return "util/fail";
		}
	}
	
	@RequestMapping("tpopup.wo")
	public String tpopup(HttpServletRequest request, Model model) throws Exception {
		
		model.addAttribute("request",request);
		command = new tpopupcommand();
		command.execute(model);
		
		return "travel/travelInfo";
	}
	
	@RequestMapping("big_picture")
	public String bigpicture(HttpServletRequest request, Model model) {
		
		String timg = request.getParameter("timg");
		
		model.addAttribute("timg",timg);
		
		return "travel/big_picture";
	}
}
