package com.project.mypage;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.project.dao.ContentDao;
import com.project.dto.ContentDto2;
import com.project.util.Command;

public class Mypage implements Command{

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpSession session = (HttpSession) map.get("session");
		
		String strID = (String) session.getAttribute("loginUser");
		
		ContentDao dao = new ContentDao(); 
		ArrayList<ContentDto2> dtos = dao.mypage(strID);
		model.addAttribute("mypage", dtos);
	}

}
