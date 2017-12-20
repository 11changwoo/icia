package com.project.join;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.project.dao.MemberDAO;
import com.project.dto.MemberVO;
import com.project.util.Command;

public class Mupdate implements Command {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpSession session = (HttpSession) map.get("session"); 
		
		String id = (String) session.getAttribute("loginUser");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO mVo = dao.getMember(id);
		
		model.addAttribute("update",mVo);
	}

}
