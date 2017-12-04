package com.project.home;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.dao.MemberDAO;
import com.project.util.Constant;

@Controller
public class HomeController {

	private JdbcTemplate template;
	
	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}
	
	
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String home() {

		return "index";
	}
	//메인화면으로
	@RequestMapping("/main")
	public String main() {
		return "now/main";
	}
	//로그인 완료시 화면
	@RequestMapping("/main_login")
	public String main_login() {
		
		return "now/main_login";
	}

}
