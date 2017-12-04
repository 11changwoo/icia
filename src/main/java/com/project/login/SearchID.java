package com.project.login;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.project.dao.MemberDAO;

public class SearchID implements LCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String name = request.getParameter("name");
		String email_id = request.getParameter("email_id");
		String email_select = request.getParameter("email_select");
		
		String email = email_id+"@"+email_select;
		
		MemberDAO dao = new MemberDAO();
		String id = dao.searchId(name, email);
		if(!id.equals("")) {
			model.addAttribute("searchId",id);
		}
		System.out.println(id);
	}

}
