package com.project.login;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.project.dao.MemberDAO;
import com.project.dto.MemberVO;
import com.project.util.Command;

public class Login implements Command {

	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = (HttpSession) map.get("session");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberDAO mDao = new MemberDAO();
		MemberVO mVo = mDao.getMember(id);
		System.out.println("login");
		if (mVo.getPw().equals(pw)) {
			session.setAttribute("loginUser", mVo.getId());
			if (mVo.getType() != null)
				session.setAttribute("company_type", mVo.getType());
			if (mVo.getBusiness() != null)
				session.setAttribute("business_type",mVo.getBusiness());
			System.out.println("技记 己傍");
			System.out.println(mVo.getType());
			System.out.println(mVo.getBusiness());
		} else {
			System.out.println("技记 角菩");
			//session.setAttribute("loginUser", "");
			throw new Exception();
		}

	}

}
