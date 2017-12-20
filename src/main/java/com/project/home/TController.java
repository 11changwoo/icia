package com.project.home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.movie.m_test;
import com.project.movie.mpopupcommand;
import com.project.movie.mwrite_2command;
import com.project.movie.mwrite_3command;
import com.project.movie.mwrite_seatcommand;
import com.project.movie.mwritecommand;
import com.project.pension.p_test;
import com.project.pension.popupcommand;
import com.project.pension.write_2command;
import com.project.pension.write_3command;
import com.project.pension.writecommand;
import com.project.util.Command;

@Controller
public class TController {
	Command command;

	// 펜션
	// 펜션 예약 시작
//	@RequestMapping("preservation")
//	public String preservation() {
//		return "pension/main_test";
//	}
	
	@RequestMapping("/main.wo")
	public String pmain(Model model) throws Exception {
		command = new p_test();
		command.execute(model);
		return "pension/pbooking";
	}

	@RequestMapping("/write.wo")
	public String pwrite(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		command = new writecommand();
		command.execute(model);
		return "pension/booking_3";
	}

	@RequestMapping("/write_2.wo")
	public String pwrite_2(HttpSession session, Model model) throws Exception {

		model.addAttribute("session", session);
		command = new write_2command();
		command.execute(model);
		return "pension/booking_2";
	}

	@RequestMapping("/write_3.wo")
	public String pwrite_3(HttpServletRequest request, Model model) {

		model.addAttribute("request", request);
		command = new write_3command();
		try {
			command.execute(model);

			return "util/suc";
		} catch (Exception e) {
			return "util/fail";
		}
	}

	@RequestMapping("/popup.wo")
	public String popup(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		command = new popupcommand();
		command.execute(model);
		return "pension/pbooking_pop";
	}
	
	@RequestMapping("pen_subpopup")
	public String subpopup(HttpServletRequest request, Model model) {
		
		String pimg = request.getParameter("pimg");
		
		model.addAttribute("pimg",pimg);
		
		return "pension/pen_subpopup";
	}

	// 영화
	// 영화 예약 시작
//	@RequestMapping("mreservation")
//	public String mreservation() {
//		return "movie/main_mtest";
//	}
	
	@RequestMapping("/main_m.wo")
	public String mmain(Model model) throws Exception {
		command = new m_test();
		command.execute(model);
		
		return "movie/mbooking";
	}

	@RequestMapping("/mwrite.wo")
	public String mwrite(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		command = new mwritecommand();
		command.execute(model);
		return "movie/tests";
	}

	@RequestMapping("/mwrite_2.wo")
	public String mwrite_2(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		command = new mwrite_seatcommand();
		command.execute(model);
		return "movie/mbooking_3";
	}

	@RequestMapping("/mwrite_3.wo")
	public String mwrite_3(HttpSession session, Model model) throws Exception {
		
		model.addAttribute("session", session);
		command = new mwrite_2command();
		command.execute(model);
		return "movie/mbooking_2";
	}

	@RequestMapping("/mwrite_4.wo")
	public String mwrite_4(HttpServletRequest request, Model model) {

		model.addAttribute("request", request);
		command = new mwrite_3command();
		try {
			command.execute(model);

			return "util/suc";
		} catch (Exception e) {
			return "util/fail";
		}
	}

	@RequestMapping("/mpopup.wo")
	public String mpopup(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);
		command = new mpopupcommand();
		command.execute(model);
		return "movie/mbooking_pop";
	}
	
	@RequestMapping("movie_subpopup")
	public String msubpopup(HttpServletRequest request, Model model) {
		
		String mimg = request.getParameter("mimg");
		
		model.addAttribute("mimg",mimg);
		
		return "movie/movie_subpopup";
	}

	// 결제 끝 (성공이든 실패든)
	@RequestMapping("/suc.wo")
	public String psuc(Model model) throws Exception {
		// command = new p_test();
		// command.execute(model);
		return "redirect:main_login";
	}
}
