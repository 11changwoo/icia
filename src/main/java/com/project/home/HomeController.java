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
	//����ȭ������
	@RequestMapping("/main")
	public String main() {
		return "now/main";
	}
	//�α��� �Ϸ�� ȭ��
	@RequestMapping("/main_login")
	public String main_login() {
		
		return "now/main_login";
	}
	
	@RequestMapping("sub_1")
	public String sub() {
		return "now/sub_1";
	}
	
	@RequestMapping("pwf")
	public String pwf() {
		return "company/pwriteForm";
	}
	
	@RequestMapping("mwf")
	public String mwf() {
		return "company/mwriteForm";
	}
	
	@RequestMapping("twf")
	public String twf() {
		return "company/twriteForm";
	}
	
	@RequestMapping("board")
	public String board() {
		return "board/boardList";
	}
}
