package com.project.login;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import com.project.dao.MemberDAO;
import com.project.dto.MemberVO;

public class Login implements LCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = (HttpSession) map.get("session");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberDAO mDao = new MemberDAO();
		MemberVO mVo = (MemberVO) mDao.getMember(id);
		System.out.println("login");
		if (mVo.getPw().equals(pw)) {
			session.setAttribute("loginUser", mVo.getId());
			if (mVo.getType() != null)
				model.addAttribute("company_type", mVo.getType());
			System.out.println("技记 己傍");
			System.out.println(mVo.getType());
		} else {
			System.out.println("技记 角菩");
			session.setAttribute("loginUser", "");
		}

	}

}
