package com.project.join;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.project.dao.MemberDAO;
import com.project.util.Command;

public class Update implements Command{

	@Override
	public void execute(Model model) throws Exception{
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = (HttpSession) map.get("session");
		
		String id = (String) session.getAttribute("loginUser");
//		String id = request.getParameter("id");
		
		String pw = request.getParameter("pw");
		String addr_f = request.getParameter("addr_f");
		String addr_b = request.getParameter("addr_b");
		String email_id = request.getParameter("email_id");
		String email_select = request.getParameter("email_select");
		String tel = request.getParameter("tel");
		String intro = request.getParameter("intro");
		
		String addr = addr_f + " " +addr_b;
		String email = email_id + "@" + email_select;
		
		MemberDAO dao = new MemberDAO();
		int ps = dao.updateMember(id,pw,addr,email,tel,intro);
		if(ps != 1) {
			throw new Exception();
		}
	}

}
