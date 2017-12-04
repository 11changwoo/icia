package com.project.home;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.join.IdCheck;
import com.project.join.JCommand;
import com.project.join.Joinup;

@Controller
public class JoinController {

	JCommand command;

	//회원가입 화면
	@RequestMapping("/join")
	public String join() {
		
		return "join/signup";
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/joinOk")
	public String joinOk(HttpServletRequest request, Model model) {
		
		model.addAttribute("request",request);
		command = new Joinup();
		command.execute(model);
		
		return "redirect:login";
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/idCheck")
	public String idCheck(HttpServletRequest request, Model model) {
		model.addAttribute("id",request);
		command = new IdCheck();
		command.execute(model);
		
		return "join/idcheck";
	}
}
