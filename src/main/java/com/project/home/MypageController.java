package com.project.home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.join.Mupdate;
import com.project.join.Remove;
import com.project.join.Update;
import com.project.mypage.Mbooklist;
import com.project.mypage.Mypage;
import com.project.mypage.Pbooklist;
import com.project.mypage.Tbooklist;
import com.project.util.Command;

@Controller
public class MypageController {
	Command command;

	// 마이페이지 확인
	@RequestMapping("/mypage")
	public String mypage(HttpSession session, Model model) throws Exception {
		//마이페이지 : 세션으로 값을 유지하며 사용
		model.addAttribute("session",session);
		command = new Mypage();
		command.execute(model);
		
		return "mypage/mypage";
	}

	// 펜션 예약확인
	@RequestMapping("/booklist")
	public String booklist(HttpSession session, Model model) throws Exception {
		
		model.addAttribute("session",session);
		command = new Pbooklist();
		command.execute(model);

		return "mypage/booklist";
	}

	// 여행 예약확인
	@RequestMapping("/booklist2")
	public String booklist2(HttpSession session, Model model) throws Exception {
		
		model.addAttribute("session",session);
		command = new Tbooklist();
		command.execute(model);

		return "mypage/booklist2";
	}

	// 영화 예약확인
	@RequestMapping("/booklist3")
	public String booklist3(HttpSession session, Model model) throws Exception {
		
		model.addAttribute("session",session);
		command = new Mbooklist();
		command.execute(model);
		
		return "mypage/booklist3";
	}
	
	@RequestMapping("mUpdate")
	public String mUpdate(HttpSession session, Model model) {
		
		model.addAttribute("session",session);
		command = new Mupdate();
		try {
			command.execute(model);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "rejoin/memberupdate";
	}
	
	@RequestMapping(method=RequestMethod.POST, value="mUpdate.do")
	public String mUpdatedo(HttpServletRequest request, HttpSession session, Model model) {
		
		model.addAttribute("request",request);
		model.addAttribute("session",session);
		
		command = new Update();
		try {
			command.execute(model);
			
			return "now/main_login";
		} catch (Exception e) {
			System.out.println("수정 실패");
			
			return "redirect:mUpdate";
		}
		
	}
	
	@RequestMapping("remove")
	public String remove() {
		return "remove/memberremove";
	}
	
	@RequestMapping("remove.do")
	public String removedo(HttpServletRequest request, HttpSession session, Model model) {
		
		model.addAttribute("request",request);
		model.addAttribute("session",session);
		
		command = new Remove();
		try {
			command.execute(model);
			
			session.invalidate();
			return "now/main";
		} catch(Exception e) {
			return "redirect:remove";
		}
	}
}
