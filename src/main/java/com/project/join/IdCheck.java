package com.project.join;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.project.dao.MemberDAO;
import com.project.util.Command;

public class IdCheck implements Command{

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("id");
		
		String id = request.getParameter("id");
		
		MemberDAO mDao = new MemberDAO();
		int result = mDao.confirmID(id);
		if(result == 1) {
			model.addAttribute("id",id);
			model.addAttribute("result",1);
		} else {
			model.addAttribute("id",id);
			model.addAttribute("result",-1);
		}
	}

}
