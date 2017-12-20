package com.project.join;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.project.dao.MemberDAO;
import com.project.dto.MemberVO;
import com.project.util.Command;

public class Remove implements Command{

	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = (HttpSession) map.get("session");
		
		String id = (String) session.getAttribute("loginUser");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		MemberVO mVo = dao.getMember(id);
		if(mVo.getPw().equals(pw)) {
			dao.removeMember(id);
			System.out.println("삭제 성공");
		} else {
			System.out.println("삭제 실패");
			throw new Exception();
		}
	}

}
