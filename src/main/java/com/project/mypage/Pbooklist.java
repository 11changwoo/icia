package com.project.mypage;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.project.dao.ContentDao;
import com.project.dto.ContentDto2;
import com.project.util.Command;

public class Pbooklist implements Command{

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpSession session = (HttpSession) map.get("session");
		
		String strID = (String) session.getAttribute("loginUser");
		
		ContentDao dao = new ContentDao(); 
		ArrayList<ContentDto2> dtos = dao.booklist(strID);
		model.addAttribute("booklist", dtos);
	}

}
