package com.project.home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.login.Login;
import com.project.login.SearchID;
import com.project.login.SearchPW;
import com.project.util.Command;

@Controller
public class LoginController {

	Command command;

	// �α���ȭ��
	@RequestMapping("login")
	public String login() {
		return "login/login";
	}

	@RequestMapping("login.do")
	public String loginOk(HttpServletRequest request, HttpSession session, Model model) {
		
		model.addAttribute("request",request);
		model.addAttribute("session",session);
		command = new Login();
		try {
			command.execute(model);
		
			return "redirect:main_login";
		} catch(Exception e) {
			return "redirect:login";
		}
		
	}

	@RequestMapping("/logout")
	public String logout() {
		return "logout/logout";
	}
	
	@RequestMapping("/findid")
	public String findid() {

		return "login/findid";
	}

	@RequestMapping("search.do")
	public String searchid(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);

		command = new SearchID();
		command.execute(model);

		return "login/findid";
	}

	@RequestMapping("/findpw")
	public String findpw() {

		return "login/findpw";
	}

	@RequestMapping("searchpw.do")
	public String searchpw(HttpServletRequest request, Model model) throws Exception {

		model.addAttribute("request", request);

		command = new SearchPW();
		command.execute(model);

		return "login/findpw";
	}

}
